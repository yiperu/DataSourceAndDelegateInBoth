//
//  ViewController.m
//  DataSourcesAndDelegates
//
//  Created by Henry AT on 6/3/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  self.objSuma = [[Suma alloc] init];
  self.objSuma.delegate = self;
  self.objSuma.datasource = self;
  self.elArreglo = @[@50,@70];
  [self.objSuma sumar];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}





#pragma mark -
#pragma mark - Metodos para los Datasource y Delegate


-(NSInteger)cantidadDeNumeros{
  return [self.elArreglo count];
}


-(NSInteger)numeroASumar:(int)indice{
  NSInteger nsi = (NSInteger) indice;
  return [[self.elArreglo objectAtIndex:nsi] integerValue];
}



-(void)laRespuesta:(NSInteger)respuesta{

  NSLog(@"La respuesta es %ld", (long)respuesta);

}





@end
