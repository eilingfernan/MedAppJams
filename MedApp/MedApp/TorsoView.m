//
//  TorsoView.m
//  MedApp
//
//  Created by Ryan Huynh on 11/16/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import "TorsoView.h"

@interface TorsoView ()

@end

@implementation TorsoView
@synthesize torsoImage;
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
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if([[[Model uniqueModel] gender] isEqualToString:@"@Boy"])
        torsoImage.image = [UIImage imageNamed:@"TorsoView_boy"];
    else
        torsoImage.image = [UIImage imageNamed:@"TorsoView_girl"];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
