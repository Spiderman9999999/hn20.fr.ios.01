//
//  RotateViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/12/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class RotateViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.isUserInteractionEnabled = true
        let rotateGesture: UIRotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(handleRotateGesture))
        image.addGestureRecognizer(rotateGesture)
    }
    
    @objc
    private func handleRotateGesture(_ rotateGesture: UIRotationGestureRecognizer) {
        image.transform = CGAffineTransform(rotationAngle: rotateGesture.rotation)
    }
}
