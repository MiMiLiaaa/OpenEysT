//
//  MenuButton.swift
//  OpenEys
//
//  Created by llk on 16/12/13.
//  Copyright © 2016年 llk. All rights reserved.
//

public enum MenuButtonType {
    case None, Date
}
class MenuButton: UIButton {
    private var type:  MenuButtonType = .None
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel?.font = UIFont.customFont_Lobster()
        setTitleColor(UIColor.black, for: .normal)
        setImage(R.image.ic_action_menu(), for: .normal)
        
    }
    convenience init(frame: CGRect, type: MenuButtonType) {
        self.init(frame: frame)
        self.type = type
        if type == .Date {
            setTitle("Today", for: .normal)
        }
    }
    
    //
    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        if type == .Date {
            return CGRect(x: frame.height - MARGIN_10, y: 0, width: frame.width - frame.height + MARGIN_10, height: frame.height)
        }
        return CGRect.zero
    }
    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        return CGRect(x: 0, y: 0, width: frame.height, height: frame.height)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
