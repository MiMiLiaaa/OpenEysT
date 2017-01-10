//
//  APPImageView.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//

class APPImageView: UIImageView {

    override init(frame:CGRect){
        super.init(frame: frame)
        contentMode = .scaleAspectFit
    }
    override init(image:UIImage?){
        super.init(image: image)
    }
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
