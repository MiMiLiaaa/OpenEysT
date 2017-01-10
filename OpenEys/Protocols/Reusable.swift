//
//  Reusable.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

public protocol Reusable: class {
    static var reuseIdentifier: String { get }
}
extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
