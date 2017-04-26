//
//  vistaQueso.swift
//  PizzaWatch
//
//  Created by Mac Juan Araiza on 25/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {
    var tamanioset:Int = 0
    var masaset:Int = 0
    var quesoset:Int = 0
    var ingredientesset:[Bool]=[false,false,false,false,false,false,false,false,false,false,false]
    var quesoList:[String]=["Mozarela","Cheddae","Parmesano","Sin Queso"]
    
    @IBOutlet var queso: WKInterfacePicker!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let c=context as! Valor
        tamanioset=c.valorTamanio
        masaset=c.valorMasa
        
        var pickerItems: [WKPickerItem] = []
        for tamanioList in self.quesoList{
            let item = WKPickerItem()
            item.title=tamanioList
            pickerItems.append(item)
        }
        self.queso.setItems(pickerItems)
    }
    
    @IBAction func picker(_ value: Int) {
        self.quesoset=value
    }

    @IBAction func siguiente() {
        let valorContexto = Valor(d:"Pizza", v:tamanioset, m:masaset, q:quesoset, i:ingredientesset)
        pushController(withName: "IdentificadorIngredientes", context: valorContexto)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
