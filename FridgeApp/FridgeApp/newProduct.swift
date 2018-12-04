//
//  newProduct.swift
//  FridgeApp
//
//  Created by Usuario invitado on 12/4/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import Foundation
import UIKit



class newProduct : NSObject {
    var productName:String?
    var dia:String?
    var mes:String?
    var año:String?
    
    init(productName:String?, dia:String?, mes:String?, año:String?) {
        self.productName = productName
        self.dia = dia
        self.mes = mes
        self.año = año
    }
}

