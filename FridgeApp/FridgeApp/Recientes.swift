//
//  Recientes.swift
//  FridgeApp
//
//  Created by Usuario invitado on 11/29/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit

class Recientes : UITableViewController, NuevoProductoDelegate{

    var prod:[newProduct] = []
    
    var producto = ""
    var dia = ""
    var mes = ""
    var año = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prod.append(newProduct(productName: "Leche", dia: "10", mes: "02", año: "18"))
        
        //elementoUno.text=uno
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prod.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = prod[indexPath.row].productName
        cell.detailTextLabel?.text = "\(prod[indexPath.row].dia!)"
        return cell
    }
    
    func guardarProducto(producto: newProduct) {
        
        prod.append(producto)
        self.tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "nuevoProducto"{
            
            let navigation = segue.destination as! UINavigationController
            let vc = navigation.topViewController as! Producto
            vc.delegate = self
            print("No fallo")
        }
        else{
            print("Fallo")
        }
    }
    @IBAction func cancelar(_ sender: Any) {
       
            dismiss(animated: true, completion: nil)
        
    }
    
}
