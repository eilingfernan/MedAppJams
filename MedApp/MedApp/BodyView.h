//
//  BodyView.h
//  App2
//
//  Created by Eiling Fernandez on 11/11/12.
//  Copyright (c) 2012 UCI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Setting.h"

@interface BodyView: UIViewController

@property(nonatomic , retain) UIPickerView *singlePickerComponent;
@property(nonatomic , retain) NSArray *ageData;


@property (weak, nonatomic) IBOutlet UITextField *ageTextFIeld;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *weightLabel;

@property (strong, nonatomic) IBOutlet UIImageView *firstScreen;
@property (strong, nonatomic) NSMutableDictionary *heightChartB;
@property (strong, nonatomic) NSMutableDictionary *weightChartB;
@property (strong, nonatomic) NSMutableDictionary *weightChartG;
@property (strong, nonatomic) NSMutableDictionary *heightChartG;
@property (strong, nonatomic) IBOutlet UISegmentedControl *gender;

@property (strong, nonatomic) NSMutableDictionary *weightChartUse;
@property (strong, nonatomic) NSMutableDictionary *heightChartUse;
@property (strong, nonatomic) IBOutlet UILabel *heightType;
@property (strong, nonatomic) IBOutlet UILabel *weightType;



- (IBAction)submitButton:(id)sender;
- (IBAction)milestonesButton:(id)sender;
- (IBAction)genderChange:(id)sender;

@end
