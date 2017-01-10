//
//  MainTabBar.swift
//  OpenEys
//
//  Created by llk on 16/12/9.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {
    
    private lazy var tabView: MainTabView = {
        var tabView = MainTabView.tabView()
        tabView.frame = self.tabBar.bounds
        tabView.delegate = self
        return tabView
    }()
    private lazy var launchView: LaunchView = {
        var launchView = LaunchView.launchView()
        launchView.frame = self.view.bounds
        return launchView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        tabBar.addSubview(tabView)
        addChoiceVC()
        view.addSubview(launchView)
        launchView.animationDidStop { [unowned self] (launchView) in
            self.launchViewRemoveAnimation()
        }
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for button in self.tabBar.subviews {
            if button is UIControl {
                button.removeFromSuperview()
            }
        }
    }
    private func addChoiceVC(){
        let choiceController = ChoiceViewController()
        let discoverController = DiscoverViewController()
        let popularController = PopularViewController()
        
        setupChildController(controller: choiceController)
        setupChildController(controller: discoverController)
        setupChildController(controller: popularController)
    }
    private func setupChildController(controller: UIViewController) {
        controller.title = "petizer"
        addChildViewController(MainNavigationViewController(rootViewController: controller))
        view.bringSubview(toFront: controller.view)
    }
    private func launchViewRemoveAnimation(){
        UIView.animate(withDuration: 1, animations: {
            self.launchView.alpha = 0
        }) { [unowned self] (_) in
            self.launchView.removeFromSuperview()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MainTabBar:UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return TabbarTransition()
    }
}
extension MainTabBar:MainTabViewDelegate{
    func tabBarDidSelector(fromSelectorButton from: Int, toSelectorButton to: Int, title : String) {
        selectedIndex = to
    }
}
