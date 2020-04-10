//
//  ThirdViewController.swift
//  Homework
//
//  Created by APPLE on 4/10/20.
//  Copyright © 2020 ios12. All rights reserved.
//
import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Khởi tạo và set frame cho myButton
        let myButton = UIButton(frame: CGRect(x: 150, y: 150, width: 100, height: 100))
        
        //Thay đổi các thuộc tính myButton
        myButton.setTitle("My Button", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.backgroundColor = .red
        
        //Action cho myButton
        myButton.addTarget(self, action: #selector(onTapMyButton), for: .touchUpInside)
        
        //addSubview myButton nếu không có dòng này thì myButton sẽ không hiển thị
        self.view.addSubview(myButton)
    }
    
    @objc func onTapMyButton() {
        print("Tapped...")
    }
}
