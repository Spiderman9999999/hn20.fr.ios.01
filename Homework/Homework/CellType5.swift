//
//  CellType5.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class CellType5: UITableViewCell {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBAction func datePickerAction(_ sender: UIDatePicker) {
          let dateFormatter = DateFormatter()

          dateFormatter.dateStyle = DateFormatter.Style.short
          dateFormatter.timeStyle = DateFormatter.Style.short
       
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

        }

        
    override func setSelected(_ selected: Bool, animated: Bool) {
           super.setSelected(selected, animated: animated)
        

           // Configure the view for the selected state
       }
       
    
}
