//
//  SecondViewController.swift
//  Homework
//
//  Created by APPLE on 4/10/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stringDate = "10/04/2020"
        
        let dateFormater = DateFormatter()
        
        dateFormater.dateFormat = "dd/MM/yyyy"
        
        let date = dateFormater.date(from: stringDate)
                datePicker.setDate(date!, animated: true)
    }

   
 
}
