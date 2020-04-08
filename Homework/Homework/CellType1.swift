//
//  CellType1.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class CellType1: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var switch1: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
