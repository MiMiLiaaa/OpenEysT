//
//  VideoDetailPushTransition.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class VideoDetailPushTransition: NSObject,UIViewControllerAnimatedTransitioning {
    private var toVC: VideoDetailController?
    private var fromVC: BaseViewController?
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return TIME_INTERVAL
    }
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let container = transitionContext.containerView
        
        let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from) as? BaseViewController
        let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to) as? VideoDetailController
        
        self.fromVC = fromVC
        self.toVC = toVC
        let backgroundSnapshotView = fromVC?.view.snapshotView(afterScreenUpdates: false)
        let snapshotView = fromVC?.selectCell?.backgroundImageView.snapshotView(afterScreenUpdates: false)
        guard let rect = fromVC?.selectCell?.backgroundImageView.frame,let selectCell = fromVC?.selectCell else { return }
        snapshotView?.frame = container.convert(rect, to: selectCell) 
        fromVC?.selectCell?.backgroundImageView.isHidden = true
        
        let blurIamgeView = UIImageView(image: fromVC?.selectCell?.backgroundImageView.image)
        blurIamgeView.frame = CGRect(x: 0, y: snapshotView?.frame.maxY ?? 0, width: snapshotView?.frame.width ?? 0, height: 0)
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = blurIamgeView.frame
        let tabbarSnapshotView = fromVC?.tabBarController?.tabBar
        toVC?.view.frame = transitionContext.finalFrame(for: toVC!)
        //toVC.
    }
}
