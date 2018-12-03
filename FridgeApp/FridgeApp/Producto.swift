//
//  Producto.swift
//  FridgeApp
//
//  Created by Usuario invitado on 12/3/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit

class Producto : UIViewController{
    
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var inicio: UILabel!
    
    
    
    func fechaUno(){
        let today = Date()
        let month = Calendar.current.component(.month, from: today)
        let date = Calendar.current.component(.day, from: today)
        inicio.text = "\(Calendar.current.shortMonthSymbols[month-1]) \(date)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fechaUno()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "seguePro"){
            let vistaProductos = segue.destination as! Recientes
            vistaProductos.uno = productName.text!
        }
    }

}



