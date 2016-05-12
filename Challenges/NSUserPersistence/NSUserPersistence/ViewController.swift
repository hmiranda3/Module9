//
//  ViewController.swift
//  NSUserPersistence
//
//  Created by Habib Miranda on 5/12/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // check nsuserdefaults for saved text
        let savedText = NSUserDefaults.standardUserDefaults().objectForKey("savedText")
        print(savedText)
        
        if let text = savedText as? String {
            self.textField.text = text
        }
        
        //if there is saved text, set that text to thte text field
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveTextButtonTapped(sender: AnyObject) {
        
        //capture text from textfield value
        
        let captureText = textField.text
        
        NSUserDefaults.standardUserDefaults().setObject(captureText, forKey: "savedText") //Ask about this!*****
        
        // save text to nsuserdefualts
        
    }

}

