//
//  ViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/11/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class TouchEventsViewController: UIViewController {
    @IBOutlet weak var backgroundView: UIView!
 
    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.image.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       let touch: UITouch? = touches.first
             if touch?.view == image {
                print("image touch began")
             }
        super.touchesEnded(touches, with: event)
          }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch? = touches.first
        if touch?.view == image {
                 print("image touch moved")
              }
        super.touchesMoved(touches, with: event)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
         let touch: UITouch? = touches.first
               if touch?.view == image {
                        print("image touch ended")
                     }
        super.touchesEnded(touches, with: event)
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
           let touch: UITouch? = touches.first
            if touch?.view == image {
                print("image touch cancelled")
                          }
            super.touchesCancelled(touches, with: event)
    }
}
