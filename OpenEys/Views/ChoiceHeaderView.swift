//
//  ChoiceHeaderViewCollectionReusableView.swift
//  OpenEys
//
//  Created by llk on 16/12/14.
//  Copyright © 2016年 llk. All rights reserved.
//

import UIKit

class ChoiceHeaderView: UICollectionReusableView,Reusable {
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.customFont_Lobster(fontSize: LABEL_FONT_SIZE)
        return titleLabel
    }()
    private lazy var imageView: APPImageView = {
        let imageView = APPImageView()
        return imageView
    }()
    var title: String?{
        didSet{
            if let title = title{
                imageView.isHidden = true
                titleLabel.isHidden = false
                titleLabel.text = title
            }else{
                imageView.isHidden = false
                titleLabel.isHidden = true
            }
        }
    }
    var image: String? {
        didSet{
            if let image = image {
                titleLabel.isHidden = true
                imageView.isHidden = false
                imageView.yy_setImage(with: NSURL(string: image) as URL?, options: .progressiveBlur)
            }else{
                titleLabel.isHidden = false
                imageView.isHidden = true
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.white
        addSubview(titleLabel)
        addSubview(imageView)
        titleLabel.snp_makeConstraints { (make) in
            make.edges.equalTo(self)
        }
        imageView.snp_makeConstraints { (make) in
            make.leading.trailing.equalTo(self)
            make.top.equalTo(self).offset(frame.height * 0.25)
            make.height.equalTo(frame.height * 0.5)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
