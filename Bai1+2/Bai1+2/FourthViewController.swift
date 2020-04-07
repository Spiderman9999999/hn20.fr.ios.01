//
//  FourthViewController.swift
//  Bai1+2
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var displayName: UILabel!
    
    var string:String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let string = string {
        displayName.text = "Hello" + " " + string
        } else
        { displayName.text = "Hello"        }
         // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
