//
//  UIAlertExtension.swift
//  SauChat
//
//  Created by 宇野佑 on 2020/12/17.
//

import Foundation
import UIKit

extension UIAlertController{
    
    func alertBackGroundColor(){
        let firstSubView = self.view.subviews.first
        let alertContentsView = firstSubView?.subviews.first
        
        for subview in (alertContentsView?.subviews)!{
            subview.backgroundColor = UIColor.alertBackGround
            subview.layer.cornerRadius = 5.0
            subview.alpha = 1
        }
    }
}
