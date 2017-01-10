//
//  TabbarTransition.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class TabbarTransition: NSObject,UIViewControllerAnimatedTransitioning{
    let duration: TimeInterval = 0.4
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView
        let fromView = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from)?.view
        let toView = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to)?.view
        if let toView = toView{
            containerView.addSubview(toView)
        }
        toView?.alpha = 0
        fromView?.alpha = 1
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            toView?.alpha = 1
            fromView?.alpha = 0
        }) { (flag) in
            transitionContext.completeTransition(true)
        }
    }
}
