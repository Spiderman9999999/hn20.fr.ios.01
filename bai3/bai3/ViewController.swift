//
//  ViewController.swift
//  bai3
//
//  Created by APPLE on 4/2/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button: UIView!
    
     override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            print("ThangND26: Screen A viewDidLoad")
        }
        
        
        override func viewWillAppear(_ animated: Bool) {
            print("ThangND26: Screen A viewWillAppear")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            print("ThangND26: Screen A viewDidAppear")
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            print("ThangND26: Screen A viewWillDisappear")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            print("ThangND26: Screen A viewDidDisappear")
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated
            print("ThangND26: Screen A didReceiveMemoryWarning")
        }
        
    }
