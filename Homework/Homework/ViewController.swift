//
//  ViewController.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit


class  ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,  SwitchDelegate {
    private var isOn = true
    

    
    @IBOutlet weak var tableview: UITableView!
    
     func toggle (isOn: Bool) {
          self.isOn = isOn
          tableview.reloadData()
     }
     
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 8
      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0, 2:
            let cell = tableview.dequeueReusableCell(withIdentifier: "CellType4", for: indexPath) as! CellType4
            return cell
        case 1:
            let cell = tableview.dequeueReusableCell(withIdentifier: "CellType1", for: indexPath) as! CellType1
            cell.label.text = "24-Hours Time"
            cell.switch1.isOn = true
           return cell
        case 3:
            let cell = tableview.dequeueReusableCell(withIdentifier: "CellType1", for: indexPath) as! CellType1
            cell.label.text = "Set Automatically"
            cell.configure(isOn: false, delegate: self)
            return cell
            
        case 4:
            let cell = tableview.dequeueReusableCell(withIdentifier: "CellType3", for: indexPath) as! CellType3
            cell.label3.text = "Time Zone"
            cell.label4.text = "Hanoi"
                      return cell
        case 5:
            let cell = tableview.dequeueReusableCell(withIdentifier: "CellType3", for: indexPath) as! CellType3
            let dateFormatter = DateFormatter()
            let date =  Date()
            dateFormatter.dateStyle = DateFormatter.Style.short
            dateFormatter.timeStyle = DateFormatter.Style.short
            let strDate = dateFormatter.string(from: date)
            cell.label3.text = strDate
            cell.label4.text = ""
            cell.backgroundColor = .gray
            return cell
        
        case 6:
            let cell = tableview.dequeueReusableCell(withIdentifier: "DatePickerTableViewCell", for: indexPath) as! DatePickerTableViewCell
             cell.updateCell(date: Date(), indexPath: indexPath)
            
        tableview.reloadRows(at: [indexPath], with: .none)
            if isOn {
                cell.isHidden = false
            } else {
                cell.isHidden = true
            }
            
        return cell
        default:
                return UITableViewCell()
        
    }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.register(UINib(nibName: "CellType1", bundle: nil), forCellReuseIdentifier: "CellType1")
         tableview.register(UINib(nibName: "CellType2", bundle: nil), forCellReuseIdentifier: "CellType2")
         tableview.register(UINib(nibName: "CellType3", bundle: nil), forCellReuseIdentifier: "CellType3")
        tableview.register(UINib(nibName: "CellType4", bundle: nil), forCellReuseIdentifier: "CellType4")
        tableview.register(UINib(nibName: "DatePickerTableViewCell", bundle: nil), forCellReuseIdentifier: "DatePickerTableViewCell")
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
}

