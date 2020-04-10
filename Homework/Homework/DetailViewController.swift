//
//  DetailViewController.swift
//  Homework
//
//  Created by APPLE on 4/9/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblContact: UILabel!
    
    var contact: Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblContact.text = "\((contact?.contactName)!) c \((contact?.contactCategory)!)"
    }



}
