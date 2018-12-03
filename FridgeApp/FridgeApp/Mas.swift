//
//  Mas.swift
//  FridgeApp
//
//  Created by Usuario invitado on 11/29/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit

class Mas : UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text  = elementos[indexPath.row]
        
        return cell
    }
    
    var elementos: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        elementos = ["Lista de Productos", "Información de Productos", "Acerca de la App", "Twitter", " ", "Notificar un problema", "Cerrar Sesión"]
        
    }
    
    
}
