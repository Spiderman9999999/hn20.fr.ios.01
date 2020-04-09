//
//  ViewController.swift
//  Bai1
//
//  Created by APPLE on 4/8/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit
 extension String {
  func indexInt(of char: Character) -> Int? {
    return firstIndex(of: char)?.utf16Offset(in: self)
  }
}
class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var mailField: UITextField!
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var descriptField: UITextField!
    
    var gender:String?
    @IBAction func chooseGender(_ sender: UIButton) {
        let alert1 = UIAlertController(title: "Giới tính" , message: "Chọn giới tính", preferredStyle: .actionSheet)
        let chooseNam = UIAlertAction(title: "Nam", style: .default) { (act) in
            self.gender = "Nam"
        }
        let chooseNu = UIAlertAction(title: "Nữ", style: .default) { (act) in
            self.gender = "Nữ"
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            alert1.addAction(chooseNam)
            alert1.addAction(chooseNu)
            alert1.addAction(cancel)
        self.present(alert1, animated: true, completion: nil)

        }
    
    func checkEmailValidate(_ email: String) -> Bool {
        let index1: Int? = email.indexInt(of: "@")
        let index2: Int? = email.indexInt(of: ".")
        if let index1 = index1 {
            if let index2 = index2 {
                if index2 > index1 {
                    return true
                }
        }
        }
        return false

    }
    

    @IBAction func subscribeButton(_ sender: UIButton) {
        let name = nameField.text!
        let mail = mailField.text!
        let number = numberField.text!
        let address = addressField.text!
        let descript = descriptField.text!
        let gender = self.gender!
        if name != "" &&  checkEmailValidate(mail) == true && number != "" && address != "" && descript != "" && gender != "" {
            let alert2 = UIAlertController(title: "Confirm",
            message: "Họ và tên: \(name) \n Email: \(mail) \n SĐT: \(number) \n Địa chỉ: \(address) \n Mô tả: \(descript) \n Giới tính: \(gender) " ,
            preferredStyle: UIAlertController.Style.alert)
           
            let dangky = UIAlertAction(title: "Đăng ký", style: .default) { (act) in
                let alert3 = UIAlertController(title: "Thông báo" , message: "Đăng ký thành công", preferredStyle: .alert)
                
                let ok = UIAlertAction(title: "Ok", style: .default) { (act) in
                    self.nameField.text = ""
                    self.mailField.text = ""
                    self.numberField.text = ""
                    self.addressField.text = ""
                    self.descriptField.text = ""
                    self.gender = ""
                }
                alert3.addAction(ok)
                self.present(alert3, animated: true, completion: nil)

            }
            alert2.addAction(dangky)
           self.present(alert2, animated: true, completion: nil)
        }
        else {
            let alert4 = UIAlertController(title: "Thông báo" , message: "Dữ liệu nhập vào không hợp lệ ", preferredStyle: .alert)
            let ok1 = UIAlertAction(title: "Ok", style: .default)
             alert4.addAction(ok1)
             self.present(alert4, animated: true, completion: nil)

        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = ""
        mailField.text = ""
        numberField.text = ""
        addressField.text = ""
        descriptField.text = ""
        gender = ""
    }


}

