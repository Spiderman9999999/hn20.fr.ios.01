//
//  PinchViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/12/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {
  
    
    @IBOutlet var image: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.isUserInteractionEnabled = true
        let pinchGesture: UIPinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(handlePinchGesture))
        image.addGestureRecognizer(pinchGesture)
    }
    
    @objc
    private func handlePinchGesture(_ pinchGesture: UIPinchGestureRecognizer) {
        image.transform = CGAffineTransform(scaleX: pinchGesture.scale, y: pinchGesture.scale)
        pinchGesture.scale = 1.0
    }
}
