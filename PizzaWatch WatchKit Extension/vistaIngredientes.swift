//
//  vistaIngredientes.swift
//  PizzaWatch
//
//  Created by Mac Juan Araiza on 25/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngredientes: WKInterfaceController {
    var tamanioset:Int = 0
    var masaset:Int = 0
    var quesoset:Int = 0
    var ingredientesset:[Bool]=[false,false,false,false,false,false,false,false,false,false,false]
    var i1:Bool = false
     var i2:Bool = false
     var i3:Bool = false
     var i4:Bool = false
     var i5:Bool = false
     var i6:Bool = false
     var i7:Bool = false
     var i8:Bool = false
     var i9:Bool = false
    
    var cant:Int=0;
    @IBAction func jamon(_ value: Bool) {
        self.i1=value
       
    }
    @IBAction func pepperoni(_ value: Bool) {
        self.i2=value
        
    }
    @IBAction func pavo(_ value: Bool) {
        self.i3=value
        
    }
    @IBAction func salchicha(_ value: Bool) {
        self.i4=value
        
    }
    @IBAction func aceituna(_ value: Bool) {
        self.i5=value
        
    }
    @IBAction func cebolla(_ value: Bool) {
        self.i6=value
        
    }
    @IBAction func pimiento(_ value: Bool) {
        self.i7=value
        
    }
    @IBAction func pina(_ value: Bool) {
        self.i8=value
        
    }
    @IBAction func anchoas(_ value: Bool) {
        self.i9=value
        
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
      
        // Configure interface objects here.
        let c=context as! Valor
        tamanioset = c.valorTamanio
        masaset = c.valorMasa
        quesoset = c.valorQueso
        
        
        //ingredientesset[0]=
        
    }

    
    @IBAction func siguiente() {
        cant = 0
        if(i1){ingredientesset[0]=i1
        cant += 1}
        if(i2){ingredientesset[1]=i2
        cant += 1}
        if(i3){ingredientesset[2]=i3
        cant += 1}
        if(i4){ingredientesset[3]=i4
        cant += 1}
        if(i5){ingredientesset[4]=i5
        cant += 1}
        if(i6){ingredientesset[5]=i6
        cant += 1}
        if(i7){ingredientesset[6]=i7
        cant += 1}
        if(i8){ingredientesset[7]=i8
        cant += 1}
        if(i9){ingredientesset[8]=i9
            cant += 1}

        print(cant)
        if(cant>=1 && cant <= 5){
                  let valorContexto = Valor(d:"Pizza", v:tamanioset, m:masaset, q:quesoset, i:ingredientesset)
            pushController(withName: "IdentificadorConfirmacion", context: valorContexto)
        }else{
            let okAction = WKAlertAction(title: "OK",
                                         style: WKAlertActionStyle.default) { () -> Void in
                                            print("OK")
            }
            presentAlert(withTitle: "Alerta", message: "Debes seleccionar de uno a cinco\ningredientes", preferredStyle: WKAlertControllerStyle.alert, actions: [okAction])
           
        }
        
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
