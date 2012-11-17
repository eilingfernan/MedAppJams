//
//  Milestone.h
//  MedApp
//
//  Created by Eiling Fernandez on 11/16/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Milestone : UIViewController

<UIPickerViewDataSource,UIPickerViewDelegate>
{
    IBOutlet UIPickerView *agePicker;
    NSArray *ageData;
}

@property(nonatomic, retain) NSArray *ageData;

@property (nonatomic,retain) IBOutlet UIPickerView *agePicker;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;

- (IBAction)showAge:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *agePickerViewContainer;
- (IBAction)pickerDone:(id)sender;

@end