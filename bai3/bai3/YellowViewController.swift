//
//  YellowViewController.swift
//  bai3
//
//  Created by APPLE on 4/2/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet var button: UIView!
         override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            print("ThangND26: Screen B viewDidLoad")
        }
        
        
        override func viewWillAppear(_ animated: Bool) {
            print("ThangND26: Screen B viewWillAppear")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            print("ThangND26: Screen B viewDidAppear")
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            print("ThangND26: Screen B viewWillDisappear")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            print("ThangND26: Screen B viewDidDisappear")
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated
            print("ThangND26: Screen B didReceiveMemoryWarning")
        }
        
    }

