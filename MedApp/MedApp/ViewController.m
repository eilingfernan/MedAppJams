//
//  ViewController.m
//  App2
//
//  Created by Eiling Fernandez on 11/11/12.
//  Copyright (c) 2012 UCI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize heightTextField;
@synthesize ageTextFIeld;
@synthesize weightTextField;
@synthesize heightLabel;
@synthesize weightLabel;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.heightTextField.delegate = self;
    self.ageTextFIeld.delegate = self;
    self.weightTextField.delegate = self;
    
}

- (void)viewDidUnload
{
    [self setHeightLabel:nil];
    [self setWeightLabel:nil];
    [self setHeightTextField:nil];
    [self setAgeTextFIeld:nil];
    [self setWeightTextField:nil];
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

void submitAll(UITextField *ageTextFIeld, UITextField *heightTextField, UILabel *heightLabel, UITextField *weightTextField, UILabel *weightLabel) {
    int ageInt = [ageTextFIeld.text intValue];
    int heightInt = [heightTextField.text intValue];
    int weightInt = [weightTextField.text intValue];

    
    if(ageInt == 0){
        
        switch(heightInt){
            case 15:
                heightLabel.text = @"2 nd Percentile";
                break;
            case 16:
                heightLabel.text = @"3 rd Percentile";
                break;
            case 17:
                heightLabel.text = @"4 th Percentile";
                break;
            case 18:
                heightLabel.text = @"5 th Percentile";
                break;
            case 19:
                heightLabel.text = @"6 th Percentile";
                break;
        }
        switch(weightInt){
            case 15:
                weightLabel.text = @"2 nd Percentile";
                break;
            case 16:
                weightLabel.text = @"3 rd Percentile";
                break;
            case 17:
                weightLabel.text = @"4 th Percentile";
                break;
            case 18:
                weightLabel.text = @"5 th Percentile";
                break;
            case 19:
                weightLabel.text = @"6 th Percentile";
                break;
        }

        
    }
    
    if(ageInt == 1){
        
        switch(heightInt){
            case 15:
                heightLabel.text = @"7 th Percentile";
                break;
            case 16:
                heightLabel.text = @"8 th Percentile";
                break;
            case 17:
                heightLabel.text = @"9 th Percentile";
                break;
            case 18:
                heightLabel.text = @"10 th Percentile";
                break;
            case 19:
                heightLabel.text = @"11 th Percentile";
                break;
        }
        
        switch(weightInt){
            case 15:
                weightLabel.text = @"7 th Percentile";
                break;
            case 16:
                weightLabel.text = @"8 th Percentile";
                break;
            case 17:
                weightLabel.text = @"9 th Percentile";
                break;
            case 18:
                weightLabel.text = @"10 th Percentile";
                break;
            case 19:
                weightLabel.text = @"11 th Percentile";
                break;
        }
        
    }
}

- (IBAction)submitButton:(id)sender {
    
    submitAll(ageTextFIeld, heightTextField, heightLabel, weightTextField, weightLabel);
 
    
}

- (IBAction)milestonesButton:(id)sender {
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

@end
