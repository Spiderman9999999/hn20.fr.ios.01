//
//  ViewController.swift
//  Bai2
//
//  Created by APPLE on 4/2/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func button1(_ sender: Any) {
                preconditionFailure()
    }
    
    @IBAction func button2(_ sender: Any) {
        guard let url = URL(string: "https://google.com") else { return }
        UIApplication.shared.open(url)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

