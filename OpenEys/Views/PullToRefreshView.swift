//
//  PullToRefreshView.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

var animationDuration: TimeInterval = TIME_INTERVAL
var pullToRefreshHeight: CGFloat = 80

let refreshHeaderTimeKey = "RefreshHeaderView"
let refreshContentOffset = "contentOffset"
let refershContentSize = "contentSize"

enum PullToRefreshViewType {
    case Header,Footer
}
enum PullToRefreshViewState{
    case Normal,Pulling,Refreshing
}
class PullToRefreshView: UIView {
    typealias beginRefreshingBlock = () -> Void
    var loadView: LoaderView!
    var beginRefreshingCallback: beginRefreshingBlock?
    var oldState: PullToRefreshViewState = .Normal
    fileprivate var scrollView: UIScrollView!
    fileprivate var scrollViewOriginalInset: UIEdgeInsets!
    var state: PullToRefreshViewState = .Normal{
        willSet{
            self.state = newValue
        }
        didSet{
            guard state != oldValue else {
                return
            }
            switch state {
            case .Normal:
                loadView.stopLoadingAnimation()
            case .Pulling:
               break
            case .Refreshing:
                loadView.startLoadingAnimation()
                if let beginRefreshingCallback = beginRefreshingCallback{
                    beginRefreshingCallback()
                }
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView = LoaderView(frame: CGRect(origin: CGPoint.zero, size: frame.size))
        loadView.center = center
        addSubview(loadView)
    }
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        if superview != nil{
            superview?.removeObserver(self, forKeyPath: refreshContentOffset)
        }
        if let newSuperview = newSuperview{
            newSuperview.addObserver(self, forKeyPath: refreshContentOffset, options: .new, context: nil)
            var rect = frame
            rect.size.width = newSuperview.frame.width
            rect.origin.x = 0
            frame = rect
            scrollView = newSuperview as? UIScrollView
            scrollViewOriginalInset = scrollView.contentInset
        }
    }
    func isRefresh() -> Bool {
        return state == .Refreshing
    }
    func beginRefreshing(){
        if window != nil{
            state = .Refreshing
        }else{
            state = .Normal
            super.setNeedsDisplay()
        }
    }
    func endRefreshing(){
        if state == .Normal{
            return
        }
        let delayInSeconds: Double = TIME_INTERVAL
        Queue.delayInMainQueueFor(delayInSeconds, block: {
            self.state = .Normal
        })

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class PullToRefreshHeaderView: PullToRefreshView {
    override var state: PullToRefreshViewState{
        willSet{
            oldState = state
        }
        didSet{
            switch state {
            case .Normal:
                if PullToRefreshViewState.Refreshing == oldState{
                    UIView.animate(withDuration: animationDuration, animations: { 
                        var contentInset = self.scrollView.contentInset
                        contentInset.top = self.scrollViewOriginalInset.top + TOP_BAR_HEIGHT
                        self.scrollView.contentInset = contentInset
                    })
                }
            case .Pulling:
                break
            case .Refreshing:
                UIView.animate(withDuration: animationDuration, animations: {
                    let top: CGFloat = self.scrollViewOriginalInset.top + self.frame.height
                    var inset = self.scrollView.contentInset
                    inset.top = top + NAV_BAR_HEIGHT
                    self.scrollView.contentInset = inset
                    var offset = self.scrollView.contentOffset
                    offset.y = -top - NAV_BAR_HEIGHT
                    self.scrollView.contentOffset = offset
                })
            }
        }
    }
    class func headerView() -> PullToRefreshHeaderView {
        return PullToRefreshHeaderView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: pullToRefreshHeight))
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        var rect = frame
        rect.origin.y = -pullToRefreshHeight
        frame = rect
    }
    
    
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        guard state != .Refreshing else {
            return
        }
        
        guard refreshContentOffset == keyPath else {
            return
        }
        
        let currentOffsetY = scrollView.contentOffset.y + NAV_BAR_HEIGHT
        
        if currentOffsetY >= 0 {
            return
        }
        
        if self.scrollView.isDragging {
            let happenOffSetY = fabs(currentOffsetY)
            if state == .Normal && happenOffSetY > pullToRefreshHeight {
                state = .Pulling
            } else if state == .Pulling && happenOffSetY <= pullToRefreshHeight {
                state = .Normal
            } else if state == .Normal && happenOffSetY < pullToRefreshHeight {
                state = .Normal
            }
        } else if state == .Pulling {
            state = .Refreshing
        }
    }
}

//MARK: - PullToRefreshFooterView
class PullToRefreshFooterView: PullToRefreshView {
    
    private var lastRefreshCount = 0
    
    override var state: PullToRefreshViewState {
        willSet {
            oldState = state
        }
        
        didSet {
            switch state {
            case .Normal:
                if .Refreshing == oldState {
                    UIView.animate(withDuration: animationDuration, animations: {
                        self.scrollView.contentInset.bottom = self.scrollViewOriginalInset.bottom
                    })
                    let deltaH = self.heightForContentBreakView()
                    let currentCount = self.totalDataCountInScrollView()
                    if (deltaH > 0  && currentCount != self.lastRefreshCount) {
                        var offset = self.scrollView.contentOffset
                        offset.y = self.scrollView.contentOffset.y
                        self.scrollView.contentOffset = offset
                    }
                }
            case .Pulling:
                break
            case .Refreshing:
                lastRefreshCount = totalDataCountInScrollView()
                UIView.animate(withDuration: animationDuration, animations: { [unowned self] in
                    var bottom = self.frame.height + self.scrollViewOriginalInset.bottom
                    let deltaH = self.heightForContentBreakView()
                    if deltaH < 0 {
                        bottom = bottom - deltaH
                    }
                    var inset = self.scrollView.contentInset
                    inset.bottom = bottom
                    self.scrollView.contentInset = inset
                })
            }
        }
    }
    
    class func footerView() -> PullToRefreshFooterView {
        return PullToRefreshFooterView(frame: CGRect(x: 0, y: 0, width: SCREEN_WIDTH, height: pullToRefreshHeight))
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        if let superview = superview {
            superview.removeObserver(self, forKeyPath: refershContentSize)
        }
        if newSuperview != nil {
            newSuperview?.addObserver(self, forKeyPath: refershContentSize, options: .new, context: nil)
            resetFrameWithContentSize()
        }
    }
    
   override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == refershContentSize {
            resetFrameWithContentSize()
        } else if keyPath == refreshContentOffset {
            guard state != .Refreshing else {
                return
            }
            let currentOffsetY  = scrollView.contentOffset.y
            let happenOffsetY = self.happenOffsetY()
            
            if currentOffsetY <= happenOffsetY {
                return
            }
            
            if scrollView.isDragging {
                let normal2pullingOffsetY =  happenOffsetY + self.frame.size.height
                if state == .Normal && currentOffsetY > normal2pullingOffsetY {
                    state = .Pulling
                } else if (state == .Pulling && currentOffsetY <= normal2pullingOffsetY) {
                    state = .Normal
                }
            } else if (state == .Pulling) {
                state = .Refreshing
            }
        }
    }
    
    private func resetFrameWithContentSize() {
        let contentHeight = scrollView.contentSize.height
        let scrollHeight = scrollView.frame.height  - scrollViewOriginalInset.top - scrollViewOriginalInset.bottom
        
        var rect = frame
        rect.origin.y =  contentHeight > scrollHeight ? contentHeight : scrollHeight
        frame = rect
    }
    
    private func heightForContentBreakView() -> CGFloat {
        let h  = scrollView.frame.height - scrollViewOriginalInset.bottom - scrollViewOriginalInset.top
        return scrollView.contentSize.height - h
    }
    
    private func happenOffsetY() -> CGFloat {
        let deltaH = heightForContentBreakView()
        return (deltaH > 0 ? deltaH  : 0) - scrollViewOriginalInset.top
    }
    
    private func totalDataCountInScrollView() -> Int {
        var totalCount: Int = 0
        if scrollView is UITableView {
            guard let tableView = self.scrollView as? UITableView else {
                return 0
            }
            
            for i in 0..<tableView.numberOfSections {
                totalCount = totalCount + tableView.numberOfRows(inSection: i)
            }
        } else if self.scrollView is UICollectionView {
            guard let collectionView = scrollView as? UICollectionView else {
                return 0
            }
            for i in 0..<collectionView.numberOfSections {
                totalCount = totalCount + collectionView.numberOfItems(inSection: i)
            }
        }
        return totalCount
    }
}
