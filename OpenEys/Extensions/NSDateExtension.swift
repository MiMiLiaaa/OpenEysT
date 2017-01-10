//
//  NSDateExtension.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

extension NSDate {
    
    class func getCuttentTimeStamp() -> String{
        return "\(Int64(floor(NSDate().timeIntervalSince1970 * 1000)))"
    }
    
    class func getCurrentDate() -> String{
        let formatter = DateFormatter()
        formatter.date(from: "yyyy-MM-dd")
        return formatter.string(from: Date())
    }
    class func change2TimeStamp(date : String) -> String{
        let formatter = DateFormatter()
        formatter.date(from: "yyyy-MM-dd")
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        let dateNow = formatter.date(from: date)
        return "\(dateNow?.timeIntervalSince1970)000"
    }
    class func change2Date(timestamp: String) -> String{
        guard timestamp.characters.count > 3 else {
            return ""
        }
        let newTimestamp = (timestamp as NSString).substring(from: -3)
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        formatter.date(from: "yyyy-MM-dd HH:mm:ss")
        let dateStart = NSDate(timeIntervalSince1970: Double(newTimestamp)!)
        return formatter.string(from: dateStart as Date)
    }
}
