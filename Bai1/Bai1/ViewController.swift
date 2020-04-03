//
//  ViewController.swift
//  Bai1
//
//  Created by APPLE on 4/2/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    //var array = [String]()
    var choosenLanguage: String?
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            label.text = "Hello World"
        case 1:
            label.text = "Xin chào thế giới"
        case 2:
            label.text = "こんにちは世界"
        case 3:
            label.text = "Ciao mondo"
        case 4:
            label.text = "Hallo Walt"
        case 5:
            label.text = "Bonjour le monde"
        case 6:
            label.text = "你好，世界"
        case 7:
            label.text = "안녕하세요 세계"
        case 8:
            label.text = "Dia duit ar domhan"
        case 9:
            label.text = "ສະ​ບາຍ​ດີ​ຊາວ​ໂລກ"
        case 10:
            label.text = "Pozdrav svijete"
        case 11:
            label.text = "Hola Mundo"
        case 12:
            label.text = "Привет, мир"
        case 13:
            label.text = "Olá Mundo"
        case 14:
            label.text = "नमस्ते दुनिया"
        case 15:
            label.text = "Salut Lume"
        case 16:
            label.text = "Hai dunia"
        case 17:
            label.text = "Halo Dunia"
        default:
            break
        }
    }
    let array =  ["English","Vietnamese","Japanese","Italian","German","Frence","Chinese","Korean","Irish","Lao","Croatian","Spanish","Russian","Portuguese","Hindi","Romanian","Malay","Indonesian"]
           
    
       
    
    override func viewDidLoad() {
         //  array =  ["Vietnamese","English","Japanese"]
        pickerView.dataSource = self
        pickerView.delegate = self
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
   
    }



