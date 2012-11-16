//
//  Model.m
//  MedApp
//
//  Created by Ryan Huynh on 11/15/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import "Model.h"

@implementation Model
@synthesize weightSetting;
@synthesize test;
static Model* _uniqueModel = nil;
+(Model *)uniqueModel
{
	@synchronized([Model class])
	{
		if (!_uniqueModel)
			[[self alloc] init];
		return _uniqueModel;
	}
	return nil;
}

+(id)alloc
{
	@synchronized([Model class])
	{
		NSAssert(_uniqueModel == nil, @"Attempted to allocate a second instance of a singleton.");
		_uniqueModel = [super alloc];
		return _uniqueModel;
	}
	return nil;
}

-(id)init {
	self = [super init];
	if (self != nil) {
		// initialize stuff here
        weightSetting = @"POUND";
      	}
    
	return self;
}
-(NSNumber *) ret
{
    return test;
}
-(void) changeValue:(NSString*) var
{
    weightSetting = var;
}

@end
