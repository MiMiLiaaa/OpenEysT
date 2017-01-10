//
//  MenuViewController.swift
//  OpenEys
//
//  Created by llk on 16/12/30.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    let titles = ["我的缓存","功能开关","我要投稿","更多应用"]
    private let menuViewCellId = "menuViewCellId"
    lazy var tableView:UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = UIColor.clear
        tableView.tableHeaderView = MenuHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200))
        tableView.sectionHeaderHeight = 200
        tableView.rowHeight = 70
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    lazy var dismissButton: UIButton! = {
        let dismissButton = UIButton(frame: CGRect(x: 0, y: 0, width: 80, height: 40))
        dismissButton.setImage(R.image.ic_action_menu(), for: .normal)
        dismissButton.addTarget(self, action: #selector(dismissButtonTapped), for: .touchUpInside)
        return dismissButton
    }()
    
    lazy var titleLabel: UILabel! = {
        var titleLabel = UILabel()
        titleLabel.numberOfLines = 1
        titleLabel.text = "petizer"
        titleLabel.textColor = UIColor.black
        titleLabel.sizeToFit()
        return titleLabel
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = view.bounds
        view.addSubview(blurView)
        view.addSubview(tableView)
        tableView.snp_makeConstraints { make in
            make.left.right.bottom.equalTo(view)
            make.top.equalTo(view).offset(TOP_BAR_HEIGHT)
        }
        // Do any additional setup after loading the view.
    }
    func dismissButtonTapped(sende: UIButton) {
        presentingViewController?.dismiss(animated: true, completion: nil)
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
extension MenuViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "menuViewCellId")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "menuViewCellId")
        }
        cell?.backgroundColor = UIColor.clear
        cell?.contentView.backgroundColor = UIColor.clear
        cell?.selectionStyle = .none
        cell?.textLabel?.textAlignment = .center
        cell?.textLabel?.text = titles[indexPath.row]
        return cell!
    }
}
