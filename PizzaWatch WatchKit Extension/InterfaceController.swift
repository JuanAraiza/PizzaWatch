//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Mac Juan Araiza on 25/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tamanio: WKInterfacePicker!
    var tamanioset:Int = 0
    var masaset:Int = 0
    var quesoset:Int = 0
    var ingredientesset:[Bool]=[false,false,false,false,false,false,false,false,false,false,false]
    
    var tamanioList:[String]=["Chica","Mediana","Grande"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        var pickerItems: [WKPickerItem] = []
        for tamanioList in self.tamanioList{
        let item = WKPickerItem()
        item.title=tamanioList
        pickerItems.append(item)
        }
        self.tamanio.setItems(pickerItems)
        
        
        // Configure interface objects here.
    }
    
    @IBAction func picker(_ value: Int) {
        self.tamanioset=value
    }
    @IBAction func siguiente() {
        let valorContexto = Valor(d:"Tamanio", v:tamanioset, m:masaset, q:quesoset, i:ingredientesset)
        pushController(withName: "IdentificadorMasa", context: valorContexto)
    
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
