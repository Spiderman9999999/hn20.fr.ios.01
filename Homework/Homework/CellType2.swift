//
//  CellType2.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class CellType2: UITableViewCell, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return array[row]
       }
    

    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var pickerCity: UIPickerView!
    
    var choosenCity: String?

    let array =  ["Hanoi","Tokyo","New York","London","Berlin","Moscow","Seoul"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pickerCity.delegate = self
        pickerCity.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
