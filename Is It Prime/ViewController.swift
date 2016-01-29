//
//  ViewController.swift
//  Is It Prime
//
//  Created by Hoyoung Jung on 1/16/16.
//  Copyright © 2016 Hoyoung Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var numberText: UITextField!
    
    @IBOutlet var resultText: UILabel!
    
    @IBAction func isPrime(sender: AnyObject) {
        
        if let number = Int(numberText.text!) {
            var isPrime = true
        
            if number == 1 {
                isPrime = false
            }
        
            if number != 2 && number != 1 {
            
                for var i=2; i<number; i++ {
                    if number%i == 0 {
                        isPrime = false
                    }
                }
            }
        
            if isPrime {
                resultText.text = "\(number) IS Prime!"
            } else {
                resultText.text = "\(number) is NOT Prime!"
            }
        } else {
            resultText.text = "Please Enter a Whole Number"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.numberText.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Closes the keyboard by pressing anywhere
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    // Closes the keyboard by pressing return
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

}

