//
//  CollectionView.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class CollectionView: UICollectionView {

    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        backgroundColor = UIColor.white
        register(ChoiceCell.self, forCellWithReuseIdentifier: "ChoiceCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
