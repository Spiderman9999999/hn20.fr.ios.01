//
//  PlistSampleViewController.swift
//  DataHolderSample
//
//  Created by NhatHM on 4/10/20.
//  Copyright © 2020 GST.SYN. All rights reserved.
//

import UIKit

struct FresherClass: Codable {
    var classProperty: String
    var numberOfTrainee: Int
    var location: String
    var trainee: [String]
    enum CodingKeys: String, CodingKey {
    case classProperty = "Class"
    case numberOfTrainee = "Number of trainee"
    case location = "Location"
    case trainee = "Trainee"
    }
}


class PlistSampleViewController: UIViewController {
    @IBOutlet private var keyLabel: UILabel!
    @IBOutlet private var valueTextField: UITextField!
    
    private var plistData: Dictionary<String, AnyObject>?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Plist sample"
        let data = getDataFromPlistFile("PropertyListSample")
        displayDataFromPlistFile(data)
        plistData = data
    }
}

extension PlistSampleViewController {
    private func getDataFromPlistFile(_ name: String) ->  Dictionary<String, AnyObject>?{
        //PropertyListSample
        if let data = PlistManager().getPlist(withName: name)?.first {
            return data
        }
        
        return nil
    }
    
    // TODO: writing plist data as entity
    private func displayDataFromPlistFile(_ data: Dictionary<String, AnyObject>?) {
        guard let data = data else {
            keyLabel.text = "No data"
            valueTextField.text = "No data"
            return
        }
        
        keyLabel.text = "Class"
                
        if let className = data["Class"] {
            valueTextField.text = "\(className)"
        } else {
            valueTextField.text = "No data"
        }
    }
    
    @IBAction private func invokeButtonSave(_ sender: UIButton) {
        saveData(valueTextField.text ?? "Woop, no data", to: "PropertyListSample")
    }
    private func getObject() -> FresherClass?
    {
        let url: URL? = Bundle.main.url(forResource: "PropertyListSample", withExtension: ".plist")
        //let path = Bundle.main.path(forResource: <#T##String?#>, ofType: <#T##String?#>)
        var fresher: FresherClass?
        if let url = url {
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            fresher = try decoder.decode(FresherClass.self, from: data)
            return fresher
        } catch {
            // Handle error
            print(error)
        }
        }
        return nil
    }
    private func saveData(_ data: String, to file: String) {
        // User file manager to save data to document
        // let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("Preferences.plist")
        
        // Convert dic => entity
        // Save entity => file
        
        var fresher = getObject()
        print(fresher?.classProperty)
       
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml

        let url: URL? = Bundle.main.url(forResource: "PropertyListSample", withExtension: ".plist")
        
        guard let text = valueTextField.text else {
            return
        }
        
        if var fresher = fresher {
            if let url = url {
                do {
                    fresher.classProperty = text
                    let data = try encoder.encode(fresher)
                    try data.write(to: url)
                } catch {
                    print(error)
                }
    }
//    }
    }
}
    private func createDirectory() {
        let fileManager = FileManager.default
        let urlManager = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let docURL = urlManager[0]
        
        let newDir = docURL.appendingPathComponent("CachedImages").path
        do {
            try fileManager.createDirectory(atPath: newDir, withIntermediateDirectories: true, attributes: nil)
        }
        catch let error as NSError {
            print(error.localizedDescription)
        }
        
        }
        
    }

