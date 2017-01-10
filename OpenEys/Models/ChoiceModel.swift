//
//  ChoiceModel.swift
//  OpenEys
//
//  Created by llk on 16/12/14.
//  Copyright © 2016年 llk. All rights reserved.
//

struct ChoiceModel {
    var issueList = [IssueModel]()
    /// 下一个page的地址
    var nextPageUrl = ""
    /// 下次更新的时间
    var nextPublishTime: Int16!
    var newestIssueType = ""
    
    init(dict: [String : Data]) {
        nextPageUrl = dict["nextPageUrl"]?.string ?? ""
        nextPublishTime = dict["nextPublishTime"]?.int16 ?? 0
        newestIssueType = dict["newestIssueType"]?.string ?? ""
        
        if let issueArray = dict["issueList"]?.array {
            issueList = issueArray.map({ (dict) -> IssueModel in
                return IssueModel(dict: dict.dictionary)
            })
        }
    }
    
}
