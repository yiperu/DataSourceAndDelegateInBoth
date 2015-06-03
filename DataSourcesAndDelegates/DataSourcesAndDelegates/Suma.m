//
//  Suma.m
//  DataSourcesAndDelegates
//
//  Created by Henry AT on 6/3/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "Suma.h"

@implementation Suma


-(void)sumar{

  NSInteger suma = 0;
  self.cantidad = [self.datasource cantidadDeNumeros];
  for (int i = 0; i < self.cantidad; i++) {
    suma += [self.datasource numeroASumar:i];
  }
  self.resultado = suma;
  [self.delegate laRespuesta:suma];
}

@end
