//
//  ViewController.swift
//  Homework
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit
 struct Table {
    var header:String!
    var cells:[String]!
    var showHeader:Bool!
    
}


class  ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    @IBOutlet weak var tableview: UITableView!
    
    var tableData = [Table]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 5
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
            cell.switch1.isOn = false
            return cell
        case 4:
            let cell = tableview.dequeueReusableCell(withIdentifier: "CellType2", for: indexPath) as! CellType2
            cell.label2.text = "Time Zone"
            return cell
        case 5:
        let cell = tableview.dequeueReusableCell(withIdentifier: "CellType5", for: indexPath) as! CellType5
        
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
        tableview.register(UINib(nibName: "CellType5", bundle: nil), forCellReuseIdentifier: "CellType5")
        
        
        tableview.delegate = self
        tableview.dataSource = self
        
    }
    
}
