//
//  LogIn.m
//  MedApp
//
//  Created by Ryan Huynh on 11/15/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import "LogIn.h"

@interface LogIn ()

@end

@implementation LogIn

@synthesize genderSC;
@synthesize name;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if([[[Model uniqueModel] gender] isEqualToString:@"Boy"])
    {
        genderSC.selectedSegmentIndex = 0;
    }
    else
         genderSC.selectedSegmentIndex = 1;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goMainMenu:(id)sender {
    if([name.text isEqualToString:@""])
        [[Model uniqueModel] setLogIn:false];
    else
    {
        [[Model uniqueModel] setLogIn:true];
        if([[Model uniqueModel] checkRecord:name.text] == false)
           [self doAlert];
        else
            NSLog(@"CORRECT");
    }
}

- (IBAction)changeGender:(id)sender {
    NSString *gender;
    if(genderSC.selectedSegmentIndex == 0)
        gender = @"Boy";
    else
        gender = @"Girl";
    [[Model uniqueModel] changeGender:gender];
}
-(void)doAlert{
    UIAlertView *alertDialog;
	alertDialog = [[UIAlertView alloc]
                   initWithTitle: @"Alert Button Selected"
                   message:@"I need your attention NOW!"
                   delegate: self
                   cancelButtonTitle: nil
                   otherButtonTitles: @"Comfirm", @"Skip", nil];
	[alertDialog show];
}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex {
	NSString *buttonTitle=[alertView buttonTitleAtIndex:buttonIndex];
	if ([buttonTitle isEqualToString:@"Comfirm"]) {
		NSLog(@"RECORED SAVED");
    } else if ([buttonTitle isEqualToString:@"Skip"]) {
		NSLog(@"RECORD SKIP");
    }
    else
        NSLog(@"being stupid");
}

@end
