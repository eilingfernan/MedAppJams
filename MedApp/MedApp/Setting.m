//
//  Setting.m
//  MedApp
//
//  Created by Ryan Huynh on 11/15/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import "Setting.h"


@interface Setting ()

@end

@implementation Setting
@synthesize weightSetting;
@synthesize heightSetting;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *) stringForWeightUse
{
    if(weightSetting.selectedSegmentIndex == 0)
        return @"Kilogram";
    else
        return @"Pound";
}

-(NSString *) stringForHeightUse
{
    if(weightSetting.selectedSegmentIndex == 0)
        return @"Centimeter";
    else
        return @"Inch";
    
}

- (IBAction)testAction:(id)sender {
    [[Model uniqueModel] changeValue:@"KILO"];
}
@end
