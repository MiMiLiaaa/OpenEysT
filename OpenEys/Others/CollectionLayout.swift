//
//  CollectionLayout.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class CollectionLayout: UICollectionViewFlowLayout {
    override init() {
        super.init()
        itemSize = CGSize(width: SCREEN_WIDTH, height: 200 * SCREEN_WIDTH / IPHONE5_WIDTH)
        sectionInset = UIEdgeInsets.zero
        minimumInteritemSpacing = 0
        minimumLineSpacing = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
