//
//  RoundButton.swift
//  Bai1
//
//  Created by APPLE on 4/4/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit
@IBDesignable

class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool = false {
        didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 2
                
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2        }
    }
    
}
