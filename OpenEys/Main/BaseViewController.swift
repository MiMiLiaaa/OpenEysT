//
//  BaseViewController.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    var selectCell: ChoiceCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.delegate = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if !(navigationController?.visibleViewController is VideoDetailController ){
            navigationController?.delegate = nil
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        #if DEBUG
            print("内存警告")
        #endif
        // Dispose of any resources that can be recreated.
    }
}
extension BaseViewController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == .push && toVC is VideoDetailController{
            return VideoDetailPushTransition()
        }
        return nil
    }
}
