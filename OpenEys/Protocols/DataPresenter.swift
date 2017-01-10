//
//  DataPresenter.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

import Alamofire
import SwiftyJSON

typealias Data = JSON

protocol DataPresenter : class {
    associatedtype AbstractType //关联类型
    var data : [AbstractType] { set get }
    var nextPageUrl: String? {set get }
    var endpoint: String { set get }
    func netWork(url: String, parameters: [String : AnyObject]?,key: String)
    func onLoadSuccess(isPaging: Bool, jsons: [Data])
    func onLoadFailure(error:NSError)
    
}
extension DataPresenter {
    var nextPageUrl: String?{
        set {
          nextPageUrl = nil
        }
        get {
            return nil
        }
    }
    func netWork(url: String, parameters: [String : AnyObject]? = nil, key: String){
        
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).validate().responseJSON { (response) in
            switch response.result{
                case .success:
                if let value = response.result.value {
                    print("✅✅✅", response.request?.url as Any)
                    self.success(isPaging: parameters != nil, json: JSON(value), key: key)
                }
                break
            case .failure(let error):
                print("❌❌❌", response.request?.url as Any)
                self.failure(error: error as NSError)
            }
        }
    }
    func success(isPaging: Bool, json: JSON, key: String){
        if let dict = json.dictionary{
            self.nextPageUrl = dict["nextPageUrl"]?.string
            print(self.nextPageUrl)
            if let jsons = dict[key]?.arrayValue{
                onLoadSuccess(isPaging: isPaging, jsons: jsons)
            }
        }else if let jsons = json.array{
            onLoadSuccess(isPaging: isPaging, jsons: jsons)
        }
    }
    func onLoadSuccess(isPaging: Bool, jsons: [Data]) {
        
    }
    func failure(error: NSError) {
        onLoadFailure(error: error)
        print("❌❌❌", error.userInfo)
        print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
    }
    
    func onLoadFailure(error: NSError) {
        
    }
}
