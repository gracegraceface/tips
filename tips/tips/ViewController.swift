//
//  ViewController.swift
//  tips
//
//  Created by Grace Li on 8/26/15.
//  Copyright (c) 2015 grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customTipField: UITextField!
    
    /*func textField(textField:UITextField, customTipField range: NSRange, replacementString string: String) ->Bool {
        if (range.length + range.location > count(textField.text) )
        {
            return false
        }
        let newLength = count(textField.text) + count(string) - range.length
    return newLength <= 2
    } can't figure out how to limit the textfield to 2 characters...*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text="0.00"
        totalLabel.text="0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages=[0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip=billAmount*tipPercentage
        var total=billAmount+tip
        
        tipLabel.text="$\(tip)"
        totalLabel.text="$\(total)"
        
        tipLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
    }
    

    @IBAction func onValueChanged(sender: AnyObject) {
        
        var customTipPercentage = NSString(string: customTipField.text).doubleValue
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip=billAmount*customTipPercentage * 0.01
        var total=billAmount+tip
        
        tipLabel.text="$\(tip)"
        totalLabel.text="$\(total)"
        
        tipLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
        
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

