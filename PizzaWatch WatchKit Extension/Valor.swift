//
//  Valor.swift
//  PizzaWatch
//
//  Created by Mac Juan Araiza on 25/04/17.
//  Copyright © 2017 Juan Araiza. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var descripcion:String=""
    var valorTamanio:Int=0
    var valorMasa:Int=0
    var valorQueso:Int=0
    var valorIngredientes:[Bool]
    
    init(d:String,v:Int,m:Int,q:Int,i:[Bool]){
        descripcion=d
        valorTamanio=v
        valorMasa=m
        valorQueso=q
        valorIngredientes=i
    }

}
