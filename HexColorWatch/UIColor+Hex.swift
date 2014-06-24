//
//  UIColor+Hex.swift
//  HexColorWatch
//
//  Created by Mika Yamamoto on 2014/06/24.
//  Copyright (c) 2014年 Mika Yamamoto. All rights reserved.
//

import UIKit

extension UIColor {
    class func color(hex: Int) -> UIColor{
        let red :CGFloat = CGFloat(((hex & 0xff000000) >> 24))/225.0
        let green :CGFloat = CGFloat(((hex & 0x00ff0000) >> 16))/225.0
        let blue :CGFloat = CGFloat(((hex & 0x0000ff00) >> 8))/225.0
        let alpha :CGFloat = CGFloat((hex & 0x000000ff))/225.0
//        println("red:\(red) green:\(green) blue:\(blue) alpha:\(alpha)")
        println("Int")
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    class func color(hex:String) -> UIColor {
        var rsult:UInt32 = 0x0;
        var scanner:NSScanner = NSScanner(string: hex)
        scanner.scanHexInt(&rsult)
        println("String")
        return self.color(Int(rsult))
    }
}
