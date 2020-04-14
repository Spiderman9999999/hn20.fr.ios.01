//
//  PanViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/12/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class PanViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        image.isUserInteractionEnabled = true
        let panGesture: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        image.addGestureRecognizer(panGesture)
    }
    
    @objc
    private func handlePanGesture(_ panGesture: UIPanGestureRecognizer) {
        let pointTouch: CGPoint = panGesture.location(in: view)
        image.center = pointTouch
    }
}
