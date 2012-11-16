//
//  LogIn.h
//  MedApp
//
//  Created by Ryan Huynh on 11/15/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogIn : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *Name;
@property (strong, nonatomic) IBOutlet UISegmentedControl *Gender;
- (IBAction)goMainMenu:(id)sender;


@end
