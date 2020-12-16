//
//  UIColorExtension.swift
//  SauChat
//
//  Created by 宇野佑 on 2020/12/16.
//

import Foundation
import UIKit

extension UIColor{
    
    public class func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13, *) {
            return UIColor { (traitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return dark
                } else {
                    return light
                }
            }
        }
        return light
    }
    
    public static var background: UIColor {
        return dynamicColor(
            light: .white,
            dark: .blue
        )
    }
}
