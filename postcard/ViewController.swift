//
//  ViewController.swift
//  postcard
//
//  Created by Brett Foreman on 12/15/16.
//  Copyright © 2016 Brett Foreman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var labelPressed: UILabel!
    
    @IBOutlet weak var enterNameTextBox: UITextField!
    
    @IBOutlet weak var enterMessageTextBox: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        
        labelPressed.hidden = false
        labelPressed.text = enterMessageTextBox.text
        labelPressed.textColor = UIColor.redColor() 
        
        enterMessageTextBox.text = ""
        enterMessageTextBox.resignFirstResponder()
    
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

  
    
}



