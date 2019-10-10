//
//  PrefixHeader.swift
//  CyxbsMobile_Swift
//
//  Created by 方昱恒 on 2019/10/9.
//  Copyright © 2019 Redrock. All rights reserved.
//

import UIKit

/// 自定义Log
func REDLog<T>(items: T, fileName: String = #file, lineNumber: Int = #line) {
    
  #if DEBUG
    
    var tmpFileName = fileName as NSString
    tmpFileName = tmpFileName.lastPathComponent as NSString
    
    print("\(tmpFileName) @ \(lineNumber): \(items)")
    
  #endif
    
}


/* 屏幕相关 */
/// 屏幕宽度
let SCREEN_W = UIScreen.main.bounds.width

/// 屏幕高度
let SCREEN_H = UIScreen.main.bounds.height

/// 是否全面屏
let IS_IPHONE_X = (((SCREEN_H == 812.0 && SCREEN_W == 375.0) || (SCREEN_H == 896.0 && SCREEN_W == 414.0)) ? true : false)

/// 底部安全区域高度
let SAFE_AREA_BOTTOM = (IS_IPHONE_X ? 34.0 : 0.0)

/// TabBar高度
let TABBAR_H = (IS_IPHONE_X ? 49.0 + SAFE_AREA_BOTTOM : 49.0)

/// 状态栏高度
let STATUSBAR_H = Double(UIApplication.shared.statusBarFrame.size.height)

/// 导航栏高度（不包括状态栏）
let NAGBAR_H = 44.0

/// 顶部总高度（状态栏 + 导航栏）
let TOTAL_TOP_H = (STATUSBAR_H + NAGBAR_H)
