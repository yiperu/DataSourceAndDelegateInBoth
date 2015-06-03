//
//  ViewController.swift
//  DataSourcesAndDelegates-Swift
//
//  Created by Henry AT on 6/3/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit



class ViewController: UIViewController, SumaDataSource, SumaDelegate {
  
  var elArreglo:NSArray = NSArray()
  var objSuma:Suma = Suma()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    elArreglo = [50,70]
    objSuma.datasource = self
    objSuma.delegate = self;
    objSuma.sumar()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  // MARK: - Metodos para los Datasource y Delegate
  func cantidadDeNumeros() -> (Int){
    return elArreglo.count
  }
  
  func numeroASumar(indice:Int) -> (Int){
    return elArreglo.objectAtIndex(indice) as! Int
  }

  func laRespuesta(indice:Int){
    println("La Respuesta es \(indice)")
  }

  
}

