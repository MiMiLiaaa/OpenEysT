//
//  ArrayExtension.swift
//  OpenEys
//
//  Created by llk on 16/12/14.
//  Copyright © 2016年 llk. All rights reserved.
//

import Foundation
extension Array {
    subscript (safe index: Int) -> Element? {
        return (0..<count).contains(index) ? self[index] : nil
    }
}
