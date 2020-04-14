//
//  TapViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/12/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class TapViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.isUserInteractionEnabled = true

        let singleTapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleSingleTap))
        singleTapGesture.numberOfTapsRequired = 1
        image.addGestureRecognizer(singleTapGesture)
        
        let doubleTapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTap))
        doubleTapGesture.numberOfTapsRequired = 2
        image.addGestureRecognizer(doubleTapGesture)
    }
    
    @objc
    private func handleSingleTap() {
        let alert = UIAlertController(title: "Thông báo", message: "Đã chạm image bằng 1 tap", preferredStyle: .alert)
        let alertActionOk = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertActionOk)
        self.present(alert, animated: true, completion: nil)

    }
    
    @objc
    private func handleDoubleTap() {
       let alert = UIAlertController(title: "Thông báo", message: "Đã chạm image bằng 2 tap", preferredStyle: .alert)
             let alertActionOk = UIAlertAction(title: "OK", style: .default)
             alert.addAction(alertActionOk)
             self.present(alert, animated: true, completion: nil)
    }
}
