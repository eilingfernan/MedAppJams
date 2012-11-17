//
//  Milestone.m
//  MedApp
//
//  Created by Eiling Fernandez on 11/16/12.
//  Copyright (c) 2012 Ryan Huynh. All rights reserved.
//

#import "Milestone.h"

@interface Milestone ()

@end

@implementation Milestone

@synthesize agePicker;
@synthesize ageData;
@synthesize ageTextField;
@synthesize agePickerViewContainer;




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
    
    ageData = [[NSArray alloc] initWithObjects: @"0", @"1",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12", nil];
    agePickerViewContainer.hidden = YES;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    ageTextField.text = [ageData objectAtIndex:[pickerView selectedRowInComponent:0]];
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [ageData count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [ageData objectAtIndex:row];
}


- (IBAction)showAge:(id)sender {
    agePickerViewContainer.hidden = NO;
}

- (IBAction)pickerDone:(id)sender {
    agePickerViewContainer.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end