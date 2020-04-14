//
//  SwipeViewController.swift
//  iOSBasicSampleDay8
//
//  Created by VDK on 4/12/20.
//  Copyright © 2020 VDK. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {
       
    @IBOutlet weak var image: UIImageView!

    
    var imageIndex:Int = 0
    var maximages = 2
    var imageList: [String] = ["appeblack", "swiftlogo", "applegrey"]

    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped)) 
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)

        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)

        image.image = UIImage(named:"appeblack")
    }

    @objc func swiped(gesture: UIGestureRecognizer) {

        if let swipeGesture = gesture as? UISwipeGestureRecognizer {

            switch swipeGesture.direction {

            case UISwipeGestureRecognizer.Direction.right :
                    print("User swiped right")


                    imageIndex -= 1

                    // check if index is in range

                    if imageIndex < 0 {

                        imageIndex = maximages
                    }

                    image.image = UIImage(named: imageList[imageIndex])

            case UISwipeGestureRecognizer.Direction.left:
                    print("User swiped Left")


                    imageIndex += 1


                    if imageIndex > maximages {

                        imageIndex = 0
                    }

                    image.image = UIImage(named: imageList[imageIndex])

                default:
                    break
            }
        }
}
}
