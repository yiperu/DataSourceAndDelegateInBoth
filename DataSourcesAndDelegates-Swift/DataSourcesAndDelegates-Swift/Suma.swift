//
//  Suma.swift
//  DataSourcesAndDelegates-Swift
//
//  Created by Henry AT on 6/3/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import Foundation



protocol SumaDataSource {
  func cantidadDeNumeros() -> (Int)
  func numeroASumar(indice:Int) -> (Int)
}

protocol SumaDelegate {
  func laRespuesta(indice:Int)
}


class Suma: NSObject {
  
  var cantidad:Int = 0
  var resulado:Int = 0
  var datasource:SumaDataSource?
  var delegate:SumaDelegate?
  
  func sumar() {
    var sumaTemp:Int = 0
    cantidad = datasource!.cantidadDeNumeros()
    
    var index: Int
    for index = 0; index < cantidad; ++index {
      sumaTemp += datasource!.numeroASumar(index)
    }
    
    delegate?.laRespuesta(sumaTemp)
  }
  
  
}


