//
//  ViewController.swift
//  FridgeApp
//
//  Created by Usuario invitado on 11/29/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Labels
    @IBOutlet weak var userLabel: UILabel!
    
    
    //TextFields
    @IBOutlet weak var UserText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    
    
    //Buttons
    
    
    @IBAction func accederButton(_ sender: UIButton) {
        if UserText.text=="Omar" && PasswordText.text == "1074" /* PasswordText.text="1074" */{
            performSegue(withIdentifier: "passsegue", sender: self)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserText.text=""
        PasswordText.text=""
        UserText.becomeFirstResponder()
    }

}

