//
//  ChoiceViewController.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class ChoiceViewController: BaseViewController,LoadingPresenter,MenuPresenter,DataPresenter,UIViewControllerTransitioningDelegate{
    var loaderView: LoaderView?
    var menuButton: MenuButton?
    var data:[IssueModel] = [IssueModel]()
    var nextPageUrl: String?
    var endpoint = ""{
        willSet{
            netWork(url: newValue, parameters: [
                "date" : NSDate.getCuttentTimeStamp() as AnyObject,
                "num" : "7" as AnyObject
                ], key: "issueList")
        }
    }
    private lazy var presentationAnimator = GuillotineTransitionAnimation()
    private lazy var collectionView : CollectionView = {
        let collectionView = CollectionView(frame: self.view.bounds, collectionViewLayout: CollectionLayout())
        collectionView.register(ChoiceHeaderView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "ChoiceHeaderView")
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        setupLoaderView()
        endpoint = APIHeaper.API_Choice
        setupMenuButton()
        setLoaderViewHidden(hidden: false)
        collectionView.headerViewPulltoRefresh { [unowned self] in
            self.netWork(url: APIHeaper.API_Choice, parameters: [
                "date" : NSDate.getCuttentTimeStamp() as AnyObject,
                "num" : "7" as AnyObject
                ], key: "issueList")
        }
        collectionView.footerViewPullToRefresh { [unowned self] in
            if let nextPageUrl = self.nextPageUrl{
                self.netWork(url: nextPageUrl, key: "issueList")
            }
        }
    }
     func onLoadSuccess(isPaging: Bool, jsons: [Data]) {
        let list = jsons.map { (dict) -> IssueModel in
            return IssueModel(dict: dict.dictionary)
        }
        if isPaging{
            data = list
            collectionView.headerViewEndRefresh()
        }else{
            data.append(contentsOf: list)
            collectionView.footerViewEndRefresh()
        }
        setLoaderViewHidden(hidden: true)
        collectionView.reloadData()
    }
    internal func menuBtnDidClick() {
        let menuController = MenuViewController()
        menuController.modalPresentationStyle = .custom
        menuController.transitioningDelegate = self
        
        if menuController is GuillotineAnimationDelegate {
            presentationAnimator.animationDelegate = menuController as? GuillotineAnimationDelegate
        }
        
        presentationAnimator.supportView = navigationController?.navigationBar
        presentationAnimator.presentButton = menuButton
        presentationAnimator.duration = 0.15
        //presentViewController
        present(menuController, animated: true, completion: nil)
        
    }
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .Presentation
        return presentationAnimator
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        presentationAnimator.mode = .Dismissal
        return presentationAnimator
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ChoiceViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var sec: Int = 0
        if let model = data[safe: section]{
            sec = model.itemList.count
        }
        return sec
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let cell = cell as? ChoiceCell
        if let model = data[safe: indexPath.section]{
            cell?.model = model.itemList[safe: indexPath.row]
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChoiceCell", for: indexPath) as? ChoiceCell
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        selectCell = collectionView.cellForItem(at: indexPath as IndexPath) as? ChoiceCell
//        
//        let issueModel = data[indexPath.section]
//        let model = issueModel.itemList[indexPath.row]
//        
////        if model.playUrl.isEmpty {
////            APESuperHUD.showOrUpdateHUD(icon: .SadFace, message: "没有播放地址", duration: 0.3, presentingView: view, completion: nil)
////            return
////        }
//        //navigationController?.pushViewController(VideoDetailController(model: model), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionElementKindSectionHeader {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "ChoiceHeaderView", for: indexPath as IndexPath) as? ChoiceHeaderView
            if let model = data[safe: indexPath.section]{
                if let image = model.headerImage {
                    headerView?.image = image
                } else {
                    headerView?.title = model.headerTitle
                }
            }
            return headerView ?? UICollectionReusableView()
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        var sec:CGSize = CGSize(width: 0, height: 0)
        if let model = data[safe:section]{
           sec = model.isHaveSectionView ? CGSize(width: SCREEN_WIDTH, height: 50) : CGSize.zero
        }
        return sec
    }
}
