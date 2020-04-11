//
//  CellType1.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit


protocol SwitchDelegate: class {
    func toggle(isOn: Bool)
}

class CellType1: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    private weak var delegate: SwitchDelegate?

    @IBOutlet weak var switch1: UISwitch!
    func configure(isOn: Bool, delegate: SwitchDelegate) {
        switch1.isOn = isOn
        self.delegate = delegate
    }
    @objc private func toggleSwitch(_ sender: UISwitch) {
        delegate?.toggle(isOn: sender.isOn)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
