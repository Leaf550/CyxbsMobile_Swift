//
//  UIColorExtension.swift
//  CyxbsMobile_Swift
//
//  Created by 方昱恒 on 2019/10/9.
//  Copyright © 2019 Redrock. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// 创建四通道颜色，RGB取值范围为0～255，Alpha取值范围0～1
    class func colorWithRGBA(Red: CGFloat, Green: CGFloat, Blue: CGFloat, Alpha: CGFloat) -> UIColor {
        return UIColor(red: Red/255.0, green: Green/255.0, blue: Blue/255.0, alpha: Alpha)
    }
    
    /// 随机颜色，不透明度为1
    class func randomColor() -> UIColor {
        return UIColor.colorWithRGBA(Red: CGFloat(arc4random()%256), Green: CGFloat(arc4random()%256), Blue: CGFloat(arc4random()%256), Alpha: 1)
    }
    
}
