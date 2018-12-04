//
//  Producto.swift
//  FridgeApp
//
//  Created by Usuario invitado on 12/3/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit

protocol NuevoProductoDelegate{
    func guardarProducto(producto:newProduct)
}

class Producto : UIViewController{
    
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var inicio: UILabel!
    
    @IBOutlet weak var diaCad: UITextField!
    @IBOutlet weak var mesCad: UITextField!
    @IBOutlet weak var añoCad: UITextField!
    @IBOutlet weak var marca: UITextField!
    
    @IBAction func guardar(_ sender: Any) {
        
        if !(productName.text?.isEmpty)! && !(inicio.text?.isEmpty)!{
            
            let productName = self.productName.text
            let dia = diaCad.text
            let mes = mesCad.text
            let año = añoCad.text
            let pasarAReciente = newProduct(productName:productName , dia:dia, mes: mes ,año:año)
            
            delegate?.guardarProducto(producto: pasarAReciente)
            
            dismiss(animated: true, completion: nil)
        }
        
    }
    
    @IBAction func cancelar(_ sender: Any) {
            dismiss(animated: true, completion: nil)
    }
    
    var delegate : NuevoProductoDelegate?
    
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
    
    
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "seguePro"){
            let vistaProductos = segue.destination as! Recientes
            vistaProductos.uno = productName.text!
        }
    }*/

}



