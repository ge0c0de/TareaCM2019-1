//
//  Recientes.swift
//  FridgeApp
//
//  Created by Usuario invitado on 11/29/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit

class Recientes : UIViewController{
    
    var uno = ""
    var dos = ""
    
    @IBOutlet weak var elementoUno: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        elementoUno.text=uno
    }
    
}
