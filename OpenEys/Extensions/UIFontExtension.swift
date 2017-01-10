//
//  UIFontExtension.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

import Foundation
import UIKit
extension UIFont {
    ///粗体
    class func customFont_FZLTZCHJW(fontSize size: CGFloat = SMALL_FONT_SIZE) -> UIFont {
        return UIFont(name: "FZLanTingHeiS-DB1-GB", size: size)!
    }
    ///细体
    class func customFont_Lobster (fontSize size: CGFloat = SMALL_FONT_SIZE) -> UIFont {
        return UIFont(name: "Lobster 1.4", size: size)!
    }
    ///斜体
    class func customFont_FZLTXIHJW(fontSize size: CGFloat = SMALL_FONT_SIZE) -> UIFont {
        return UIFont(name: "FZLanTingHeiS-L-GB", size: size)!
    }
    
}
