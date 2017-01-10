//
//  BaseDiscoverDetail.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class BaseDiscoverDetail: UIViewController,LoadingPresenter,DataPresenter {
    
    var loaderView: LoaderView?
    var nextPageUrl: String?
    var categoryId: Int =  0
    var endpoint = "" {
        willSet{
            netWork(url: newValue, parameters: ["categoryId": categoryId as AnyObject], key: "videoList")
        }
    }
    var data: [ItemModel] = [ItemModel](){
        willSet {
            if data.count != 0 {
                collectionView.footerViewEndRefresh()
            }
        }
        didSet {
            collectionView.reloadData()
            setLoaderViewHidden(hidden: true)
        }
    }
    
    lazy var collectionView: CollectionView = {
        let rect = CGRect(x: 0, y: 0, width: self.view.frame.width, height: SCREEN_HEIGHT - TAB_BAR_HEIGHT - TOP_BAR_HEIGHT)
        let collectionView = CollectionView(frame: rect, collectionViewLayout:CollectionLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    convenience init(categoryId: Int) {
        self.init()
        self.categoryId = categoryId
    }
    final override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        setupLoaderView()
        //onPrepare()
        // Do any additional setup after loading the view.
    }
    func onLoadSuccess(isPaging: Bool, jsons: [Data]) {
        let list = jsons.map({(dict) -> ItemModel in
            ItemModel(dict: dict.dictionary)
        })
        if isPaging {
            data = list
        }else{
            data.append(contentsOf: list)
        }
    }
    func onLoadFailure(error: NSError) {}
    func onPrepare(){
        setLoaderViewHidden(hidden: false)
        collectionView.footerViewPullToRefresh { 
            if let nextPageUrl = self.nextPageUrl {
                self.netWork(url: nextPageUrl, key: "videoList")
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension BaseDiscoverDetail: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ChoiceCell()), for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? ChoiceCell)?.model = data[indexPath.row]
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        if parentViewController is DiscoverDetailController {
//            (parentViewController as? DiscoverDetailController)?.selectCell = collectionView.cellForItemAtIndexPath(indexPath) as? ChoiceCell
//        }
//        navigationController?.pushViewController(VideoDetailController(model: data[indexPath.row]), animated: true)
    }
}
