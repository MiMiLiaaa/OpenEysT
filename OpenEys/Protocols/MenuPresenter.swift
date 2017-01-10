//
//  MenuPresenter.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

protocol MenuPresenter: class {
    var menuButton: MenuButton? { get set }
    func menuBtnDidClick()
}
extension MenuPresenter where Self: UIViewController {
    func setupMenuButton(type: MenuButtonType = .None){
        menuButton = MenuButton(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 40, height: 40)), type: type)
        menuButton?.addTarget(self, action: Selector("menuBtnDidClick"), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menuButton!)
    }
}
