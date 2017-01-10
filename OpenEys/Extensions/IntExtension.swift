//
//  IntExtension.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

extension Int {
    static func durationToTimer(duration: Int) -> String {
        return "\(String(format: "%02d", duration / 60))' \(String(format: "%02d", duration % 60))\""
    }
}
