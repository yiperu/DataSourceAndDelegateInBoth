//
//  ViewController.h
//  DataSourcesAndDelegates
//
//  Created by Henry AT on 6/3/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Suma.h"

@interface ViewController : UIViewController <SumaDatSource, SumaDelegate>


@property (nonatomic, strong) NSArray * elArreglo;
@property (nonatomic, strong) Suma * objSuma;


@end

