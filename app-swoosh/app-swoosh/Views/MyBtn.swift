//
//  rb.swift
//  app-swoosh
//
//  Created by Ahmed Mohamed El-Desouky on 10/29/18.
//  Copyright © 2018 Ahmed Mohamed El-Desouky. All rights reserved.
//


import Foundation
import UIKit
@IBDesignable
class MyBtn: UIButton {
    
    @IBInspectable var borderW:CGFloat=0{didSet{self.layer.borderWidth=borderW}}
    
    @IBInspectable var borderC:UIColor=UIColor.clear{didSet{self.layer.borderColor=borderC.cgColor}}
}
