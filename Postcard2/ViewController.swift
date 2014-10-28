//
//  ViewController.swift
//  Postcard2
//
//  Created by Chris Jameyson on 10/6/14.
//  Copyright (c) 2014 Huddle Up, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextbox: UITextField!
    @IBOutlet weak var messageTextbox: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchDown(sender: UITextField) {
        button.enabled = true
        button.setTitle("Send Mail", forState: UIControlState.Normal)
        println("on touch down")
    }

    
    @IBAction func buttonClicked(sender: UIButton) {
        var name:String  = nameTextbox.text
        var message:String = messageTextbox.text
        messageLabel.text = message
        messageTextbox.text = ""
        messageTextbox.resignFirstResponder()
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        // update button text
        button.setTitle("Mail Sent", forState: UIControlState.Normal)
        button.enabled = false;
        // add commit
    }

}

