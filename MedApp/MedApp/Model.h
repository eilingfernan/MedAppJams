//
//  Model.h
//  MedApp
//
//  Created by Ryan Huynh on 11/15/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (strong, nonatomic) NSString *weightSetting;
@property (strong, nonatomic) NSNumber *test;
+(Model *) uniqueModel;

-(NSString *) returnWeightSetting;
-(void) changeValue:(NSString*) var;
@end
