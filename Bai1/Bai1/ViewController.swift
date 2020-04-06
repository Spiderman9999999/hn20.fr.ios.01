


import UIKit

extension Double {
    
    var clean: String {
        
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}

class ViewController: UIViewController {


    
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
