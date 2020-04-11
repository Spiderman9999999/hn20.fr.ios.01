//
//  CellType2.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class CellType2: UITableViewCell {
   

    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!

    var choosenCity: String?

    
    override func awakeFromNib() {
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        label2.text = ""
        
        // Configure the view for the selected state
    }
    
}
