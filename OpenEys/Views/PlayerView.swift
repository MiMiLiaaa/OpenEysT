//
//  PlayerView.swift
//  petizerApp
//
//  Created by 梁亦明 on 16/3/29.
//  Copyright © 2016年 xiaoming. All rights reserved.
//

import UIKit

class PlayerView: UIView {
    // 播放进度
    @IBOutlet weak var sliderView: UISlider!
    // 开始时间
    @IBOutlet weak var startLabel: UILabel!
    // 结束时间
    @IBOutlet weak var endLabel: UILabel!
    // 开始按钮
    @IBOutlet weak var startButton: UIButton!
    // 缓存进度
    @IBOutlet weak var progressView: UIProgressView!
    // 菊花
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    // 返回按钮
    @IBOutlet weak var backBtn: UIButton!
    // 快进，后退按钮
    @IBOutlet weak var horizontalLabel: UILabel!
    // 顶部view
    @IBOutlet weak var topView: UIView!
    // 顶部阴影
    @IBOutlet weak var topCoverView: UIView!
    // 影片名
    @IBOutlet weak var titleLabel: UILabel!
    // 底部view
    @IBOutlet weak var bottomView: UIView!
    // 底部阴影
    @IBOutlet weak var bottomCoverView: UIView!
    
    // 是否显示覆盖层
    private var isShowCoverView : Bool = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // 设置进度条属性
        sliderView.setThumbImage(UIImage(named: "slider"), for: .normal)
        insertSubview(progressView, belowSubview: sliderView)
        sliderView.minimumTrackTintColor = UIColor.white
        sliderView.maximumTrackTintColor = UIColor(colorLiteralRed: 0.3, green: 0.3, blue: 0.3, alpha: 0.6)
        
        // 设置缓存进度条属性
        progressView.progressTintColor    = UIColor.white
        progressView.trackTintColor       = UIColor.clear
        
        // 设置快进快退label
        horizontalLabel.backgroundColor = UIColor(patternImage: UIImage(named: "Management_Mask")!)
        indicatorView.stopAnimating()
        horizontalLabel.isHidden = true
        
        // 点击屏幕
        let tap = UITapGestureRecognizer(target: self, action: #selector(PlayerView.tapAction))
        addGestureRecognizer(tap)
    }
    
    /**
     加载view
     */
    class func playerView() -> PlayerView {
        return Bundle.main.loadNibNamed("PlayerView", owner: nil, options: nil)!.first as! PlayerView
    }
    
    /**
     隐藏底部view和顶部view动画
     */
    @objc private func hiddenAnimation() {
        isShowCoverView = false
        
        UIView.animate(withDuration: 0.2, animations: {
            self.topView.transform = CGAffineTransform(translationX: 0, y: -50)
            self.topCoverView.transform = CGAffineTransform(translationX: 0, y: -50)
            
            self.bottomView.transform = CGAffineTransform(translationX: 0, y: 50)
            self.bottomCoverView.transform = CGAffineTransform(translationX: 0, y: 50)
        }) { (_) in
            
            self.topView.isHidden = true
            self.topCoverView.isHidden = true
            
            self.bottomCoverView.isHidden = true
            self.bottomView.isHidden = true
        }
    }
    
    /**
     显示底部view和顶部view动画
     */
    private func showAnimation() {
        
        isShowCoverView = true
        
        self.topView.isHidden = false
        self.topCoverView.isHidden = false
        
        self.bottomCoverView.isHidden = false
        self.bottomView.isHidden = false
        
        UIView.animate(withDuration: 0.2, animations: {
            
            self.topView.transform = CGAffineTransform.identity
            self.topView.transform = CGAffineTransform.identity
            self.topCoverView.transform = CGAffineTransform.identity
            
            self.bottomCoverView.transform = CGAffineTransform.identity
            self.bottomView.transform = CGAffineTransform.identity
        }) { [unowned self](_) in
            self.afterHidden()
        }
    }
    
    
    /**
     点击屏幕
     */
    @objc private func tapAction() {
        if isShowCoverView {
            self.hiddenAnimation()
        } else {
            self.showAnimation()
        }
    }
    
    /**
     延迟隐藏底部view和顶部view
     */
    private func afterHidden() {
        
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(PlayerView.hiddenAnimation), object: nil)
        perform(#selector(PlayerView.hiddenAnimation), with: nil, afterDelay: 5.0)
    }
}
