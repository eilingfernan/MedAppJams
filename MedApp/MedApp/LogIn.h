//
//  LogIn.h
//  MedApp
//
//  Created by Ryan Huynh on 11/15/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
@interface LogIn : UIViewController <UIAlertViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UISegmentedControl *genderSC;
- (IBAction)goMainMenu:(id)sender;
- (IBAction)changeGender:(id)sender;
- (void)doAlert;

@end
