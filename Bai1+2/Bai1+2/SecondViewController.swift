//
//  SecondViewController.swift
//  Bai1+2
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var string: String? = ""
    
    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "InputVCToDisplayVC"){
                let displayVC = segue.destination as! FourthViewController
            displayVC.string = textfield1.text! + " " + textfield2.text!
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tabBarController.selectedIndex = 1
        textfield1.text = ""
        textfield2.text = ""
self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"Space-PNG-HD.png"),
        for: .default)
      
    }


}

