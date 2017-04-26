//
//  vitaConfirmacion.swift
//  PizzaWatch
//
//  Created by Mac Juan Araiza on 25/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import WatchKit
import Foundation


class vitaConfirmacion: WKInterfaceController {
    var tamanioset:Int = 0
    var masaset:Int = 0
    var quesoset:Int = 0
    var ingredientesset:[Bool]=[false,false,false,false,false,false,false,false,false,false,false]
    
    @IBOutlet var datos: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! Valor
        var cadena:String=""
        cadena="Tamaño: "
        switch c.valorTamanio{
        case 0:
            cadena += "Chica\n"
        case 1:
           cadena += "Mediana\n"
        case 2:
            cadena += "Grande\n"
        default:
            cadena += "\n"
        }
        cadena += "Tipo de Masa: "
        switch c.valorMasa{
        case 0:
            cadena += "Delgada\n"
        case 1:
            cadena += "Crujiente\n"
        case 2:
            cadena += "Gruesa\n"
        default:
            cadena += "\n"
        }
        cadena += "Tipo de Queso: "
        switch c.valorQueso{
        case 0:
            cadena += "Mozarela\n"
        case 1:
            cadena += "Cheddar\n"
        case 2:
            cadena += "Parmesano\n"
        case 3:
            cadena += "Sin Queso\n"
        default:
            cadena += "\n"
        }
        cadena += "Ingredientes:\n"
        if(c.valorIngredientes[0]){ cadena += "* Jamón \n" }
        if(c.valorIngredientes[1]){ cadena += "* Pepperoni \n" }
        if(c.valorIngredientes[2]){ cadena += "* Pavo \n" }
        if(c.valorIngredientes[3]){ cadena += "* Salchicha \n" }
        if(c.valorIngredientes[4]){ cadena += "* Aceituna \n" }
        if(c.valorIngredientes[5]){ cadena += "* Cebolla \n" }
        if(c.valorIngredientes[6]){ cadena += "* Pimiento \n" }
        if(c.valorIngredientes[7]){ cadena += "* Piña \n" }
       
        tamanioset = c.valorTamanio
        masaset = c.valorMasa
        quesoset = c.valorQueso
        ingredientesset=c.valorIngredientes
        datos.setText(cadena)
        

        // Configure interface objects here.
    }

    @IBAction func reiniciar() {
        tamanioset = 0
        masaset = 0
        quesoset = 0
        ingredientesset=[false,false,false,false,false,false,false,false,false,false,false]
        let valorContexto = Valor(d:"Pizza", v:tamanioset, m:masaset, q:quesoset, i:ingredientesset)
        pushController(withName: "IdentificadorHome", context: valorContexto)
    }
  
    @IBAction func confirmar() {
        
        let valorContexto = Valor(d:"Pizza", v:tamanioset, m:masaset, q:quesoset, i:ingredientesset)
        pushController(withName: "IdentificadorCocina", context: valorContexto)
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
