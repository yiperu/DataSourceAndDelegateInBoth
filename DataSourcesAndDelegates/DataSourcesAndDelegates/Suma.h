//
//  Suma.h
//  DataSourcesAndDelegates
//
//  Created by Henry AT on 6/3/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//







#import <Foundation/Foundation.h>

@protocol SumaDatSource <NSObject>

-(NSInteger)cantidadDeNumeros;
-(NSInteger)numeroASumar:(int)indice;

@end

@protocol SumaDelegate <NSObject>

-(void)laRespuesta:(NSInteger)respuesta;

@end


// = = = = = = = = = = = = = = = = = = = = = = = =


@interface Suma : NSObject

@property (weak, nonatomic) id<SumaDatSource> datasource;
@property (weak, nonatomic) id<SumaDelegate> delegate;

-(void)sumar;

@property NSInteger cantidad;
@property NSInteger resultado;

@end
