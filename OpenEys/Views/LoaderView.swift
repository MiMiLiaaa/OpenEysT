//
//  LoaderView.swift
//  OpenEys
//
//  Created by llk on 16/12/12.
//  Copyright © 2016年 llk. All rights reserved.
//


class LoaderView: UIView {
    private lazy var BackgroundLoaderView: UIImageView = {
        let b = APPImageView(image: R.image.ic_eye_black_outer())
        b.frame = CGRect(x: 0, y: 0, width: self.frame.height, height: self.frame.height)
        b.center = self.center
        b.layer.allowsEdgeAntialiasing = true //去除锯齿
        return b
    }()
    private lazy var CenterLoaderView: UIImageView = {
        let c = APPImageView(image: R.image.ic_eye_black_inner())
        c.frame = CGRect(x: 0, y: 0, width: self.frame.height - MARGIN_5, height: self.frame.height - MARGIN_5)
        c.center = self.center
        c.layer.allowsEdgeAntialiasing = true
        return c
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(BackgroundLoaderView)
        addSubview(CenterLoaderView)
    }
    func startLoadingAnimation(){
        //isHidden = true
        let anm = CABasicAnimation(keyPath: "transform.rotation.z")
        anm.fromValue = 0
        anm.toValue = M_PI * 2
        anm.duration = 2
        anm.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        anm.repeatCount = HUGE
        anm.fillMode = kCAFillModeForwards
        anm.isRemovedOnCompletion = false
        CenterLoaderView.layer.add(anm, forKey: anm.keyPath)
    }
    func stopLoadingAnimation(){
        CenterLoaderView.layer.removeAllAnimations()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
