



import UIKit

extension Double {
    
    var clean: String {
        
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}

class ViewController: UIViewController {
    @IBOutlet  var buttonGroup1: [RoundButton]!
    
    @IBOutlet  var buttonGroup2: [RoundButton]!
    
    @IBOutlet  var buttonGroup3: [RoundButton]!
    
    
    @IBAction func changeColor1(_ sender: RoundButton) {
        view.backgroundColor = UIColor.white
        label.textColor = UIColor.black
        
        for button in self.buttonGroup1 {
            button.backgroundColor = UIColor.lightGray
            button.setTitleColor(UIColor.black, for: .normal)
            
        }
         for button in self.buttonGroup2 {
                   button.backgroundColor = UIColor.blue
                   button.setTitleColor(UIColor.white, for: .normal)

               }
        for button in self.buttonGroup3 {
                       button.backgroundColor = UIColor.systemTeal
                       button.setTitleColor(UIColor.white, for: .normal)

                   }

          }
    
    @IBAction func changeColor2(_ sender: RoundButton) {
        view.backgroundColor = UIColor.black
        label.textColor = UIColor.white
        
        for button in self.buttonGroup1 {
            button.backgroundColor = UIColor.darkGray
            button.setTitleColor(UIColor.white, for: .normal)
            
        }
         for button in self.buttonGroup2 {
             button.backgroundColor = UIColor.systemOrange
             button.setTitleColor(UIColor.white, for: .normal)

               }
        for button in self.buttonGroup3 {
            button.backgroundColor = UIColor.lightGray
            button.setTitleColor(UIColor.black, for: .normal)

                   }

          }
    @IBAction func changeColor3(_ sender: RoundButton) {
    view.backgroundColor = UIColor.white
    label.textColor = UIColor.black
    
    for button in self.buttonGroup1 {
        button.backgroundColor = UIColor.lightGray
        button.setTitleColor(UIColor.black, for: .normal)
        
    }
     for button in self.buttonGroup2 {
         button.backgroundColor = UIColor.systemOrange
         button.setTitleColor(UIColor.white, for: .normal)

           }
    for button in self.buttonGroup3 {
        button.backgroundColor = UIColor.systemYellow
        button.setTitleColor(UIColor.black, for: .normal)

               }

      }
    
    
    @IBOutlet weak var label: UILabel!
 


    let SIGN     : Int = 12     // +/-
    let PERCENT  : Int = 13     //  %
    let DIVIDE   : Int = 14     //  ÷
    let MULTIPLY : Int = 15     //  ×
    let SUBTRACT : Int = 16     //  -
    let ADD      : Int = 17     //  +
    

    
    var result  : Double  = 0
    var operand : Double  = 0
    var opCode  : Int     = 0
    var pending : Bool    = false
    var first   : Bool    = false
    

    func displayNumber(number : Double) {
 
        label.text = String(number.clean)
    }
    
    func displayText(text : String) {
        
        label.text = text
    }
    

    @IBAction func initialize() {
        
        result  = 0
        operand = 0
        opCode  = 0
        pending = false
        displayNumber(number: 0)
    }
    

    @IBAction func clear(_ sender: RoundButton) {
       
        initialize()
    }
    

    @IBAction func binaryOperate() {
        
        switch opCode {
            
        case DIVIDE:
            result = operand == 0 ?
                Double.infinity :
                result / operand
            
        case MULTIPLY:
            result = result * operand
            
        case SUBTRACT:
            result = result - operand
            
        case ADD:
            result = result + operand
            
        // Do nothing
        default:
            break
        }
        
        pending = false
        
        displayNumber(number: result)
    }
    

    @IBAction func unaryOperate(_ sender: RoundButton) {
        
        switch sender.tag {
            
        case SIGN:
            
            if (result != 0) {
                
                result = result * -1
            }
            
        case PERCENT:
            result = result * 0.01
            
        default:
            break
        }
        
        displayNumber(number: result)
    }
    

    @IBAction func numbers(_ sender: RoundButton) {
        
        var txt : String = label.text!
        let val : Double = Double(sender.tag - 1)
        
       
        if txt == "0" || (pending && first) {
            
            txt   = val.clean
            first = false
           
        
        } else {
            
            txt = (txt) + val.clean
        }
        
        
        if !pending {
            
            result = Double(txt)!
            
        // Otherwise, write into the
        // second operand
        } else {
            
            operand = Double(txt)!
        }
        
        displayText(text: txt)
    }
    


    @IBAction func operation(_ sender: RoundButton) {
        
        
        if pending {
            
            binaryOperate()
        }
        
       
        
        opCode  = sender.tag
        pending = true
        first   = true
    }
    

    @IBAction func decimal(_ sender: RoundButton) {
        
        var txt = label.text!

        if !txt.contains(".") {

            txt = (txt) + "."
        }

        displayText(text: txt)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     
        initialize()
    }




}
