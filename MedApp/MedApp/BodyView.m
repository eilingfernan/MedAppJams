//
//  BodyView.m
//  MedApp
//
//  Created by Eiling Fernandez on 11/11/12.
//  Copyright (c) 2012 UCI. All rights reserved.
//

#import "BodyView.h"
#import "Setting.h"

@interface BodyView ()

@end

@implementation BodyView

@synthesize heightTextField;
@synthesize ageTextFIeld;
@synthesize weightTextField;
@synthesize heightLabel;
@synthesize weightLabel;
@synthesize weightChartB;
@synthesize heightChartB;
@synthesize weightChartG;
@synthesize heightChartG;
@synthesize gender;
@synthesize firstScreen;
@synthesize weightChartUse;
@synthesize heightChartUse;
@synthesize singlePickerComponent;
@synthesize ageData;
@synthesize heightType;
@synthesize weightType;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a n
    
    
    //Initialize dictionary
    //Boy Weight chart, variable name is corespoding to age, e.g. bw0 is for boy with age 0, bw1 for boy with age 1, etc..
    
    
    NSMutableDictionary *bw1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                               @"3rd Percentile for Weight.", @"3.6",
                               @"5th Percentile for Weight.", @"3.7",
                               @"10th Percentile for Weight.", @"4.0",
                               @"25th Percentile for Weight.", @"4.4",
                               @"50th Percentile for Weight.", @"4.8",
                               @"75th Percentile for Weight.", @"5.3",
                               @"90th Percentile for Weight.", @"5.7",
                               @"95th Percentile for Weight.", @"5.9",
                               @"97th Percentile for Weight.", @"6.1",
                               nil];
    
    NSMutableDictionary *bw0 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                @"3rd Percentile for Weight.", @"2.3",
                                @"5th Percentile for Weight.", @"2.5",
                                @"10th Percentile for Weight.", @"2.7",
                                @"25th Percentile for Weight.", @"3.1",
                                @"50th Percentile for Weight.", @"3.5",
                                @"75th Percentile for Weight.", @"3.8",
                                @"90th Percentile for Weight.", @"4.1",
                                @"95th Percentile for Weight.", @"4.3",
                                @"97th Percentile for Weight.", @"4.4",
                                @"BOY", @"3.6",
                                nil];
    weightChartB = [[NSMutableDictionary alloc]initWithObjectsAndKeys:
                    bw0, [NSNumber numberWithInt:0],
                    bw1, [NSNumber numberWithInt:1],
                    nil];
    
    
    //Boy Height Chart.
    NSMutableDictionary *bh0 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                               @"3rd Percentile for Height.", @"44.9",
                               @"5th Percentile for Height.", @"45.5",
                               @"10th Percentile for Height.", @"46.5",
                               @"25th Percentile for Height.", @"48.1",
                               @"50th Percentile for Height.", @"49.9",
                               @"75th Percentile for Height.", @"51.7",
                               @"90th Percentile for Height.", @"53.3",
                               @"95th Percentile for Height.", @"54.3",
                               @"97th Percentile for Height.", @"54.9",
                               nil];
    
    NSMutableDictionary *bh1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                @"3rd Percentile for Height.", @"52.1",
                                @"5th Percentile for Height.", @"52.7",
                                @"10th Percentile for Height.", @"53.5",
                                @"25th Percentile for Height.", @"54.9",
                                @"50th Percentile for Height.", @"56.6",
                                @"75th Percentile for Height.", @"58.3",
                                @"90th Percentile for Height.", @"59.9",
                                @"95th Percentile for Height.", @"60.9",
                                @"97th Percentile for Height.", @"61.6",
                                nil];

    
    
    heightChartB = [[NSMutableDictionary alloc]initWithObjectsAndKeys:
                    bh0, [NSNumber numberWithInt:0],
                    bh1, [NSNumber numberWithInt:1],
                    nil];
    
    //Girl Weight Chart.
    NSMutableDictionary *gw0 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                @"3rd Percentile for Height.", @"2.4",
                                @"5th Percentile for Height.", @"2.5",
                                @"10th Percentile for Height.", @"2.7",
                                @"25th Percentile for Height.", @"3.1",
                                @"50th Percentile for Height.", @"3.4",
                                @"75th Percentile for Height.", @"3.7",
                                @"90th Percentile for Height.", @"3.9",
                                @"95th Percentile for Height.", @"4.1",
                                @"97th Percentile for Height.", @"4.2",
                                 @"GIRL", @"3.6",
                                nil];
    weightChartG = [[NSMutableDictionary alloc]initWithObjectsAndKeys:
                    gw0, [NSNumber numberWithInt:0],
                                       nil];
    weightChartUse = weightChartB;
    heightChartUse = heightChartB;

}

- (void)viewDidUnload
{
    [self setHeightLabel:nil];
    [self setWeightLabel:nil];
    [self setHeightTextField:nil];
    [self setAgeTextFIeld:nil];
    [self setWeightTextField:nil];
    
    //NEED TO DESTROY DICTIONARIES LATER.
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)submitButton:(id)sender {
    
    //submitAll(ageTextFIeld, heightTextField, heightLabel, weightTextField, weightLabel);
   
    double distance = 0;
    double weight = round(weightTextField.text.doubleValue * 0.453592 * 10)/10.0 ;
    NSMutableDictionary *wTemp = [weightChartUse objectForKey:[NSNumber numberWithInt:ageTextFIeld.text.intValue]];
    while([wTemp objectForKey:[NSString stringWithFormat:@"%.1f", weight + distance]] == nil
          &&[wTemp objectForKey:[NSString stringWithFormat:@"%.1f", weight - distance]] == nil)
    {
       distance += 0.1;
    }
    if(distance == 0)
        weightLabel.text = [wTemp objectForKey:[NSString stringWithFormat:@"%.1f", weight]];
    else
    {
        if([wTemp objectForKey:[NSString stringWithFormat:@"%.1f", weight + distance]] != nil)
            weightLabel.text = [wTemp objectForKey:[NSString stringWithFormat:@"%.1f", weight + distance]];
        else
            weightLabel.text = [wTemp objectForKey:[NSString stringWithFormat:@"%.1f", weight - distance]];
    }
    
    distance = 0;
    double height = round(heightTextField.text.doubleValue * 2.54 * 10)/10.0 ;
    NSMutableDictionary *hTemp = [heightChartB objectForKey:[NSNumber numberWithInt:ageTextFIeld.text.intValue]];
    while([hTemp objectForKey:[NSString stringWithFormat:@"%.1f", height + distance]] == nil
          &&[hTemp objectForKey:[NSString stringWithFormat:@"%.1f", height - distance]] == nil)
    {
        distance += 0.1;
    }
    if(distance == 0)
        heightLabel.text = [hTemp objectForKey:[NSString stringWithFormat:@"%.1f", height]];
    else
    {
        if([hTemp objectForKey:[NSString stringWithFormat:@"%.1f", height + distance]] != nil)
            heightLabel.text = [hTemp objectForKey:[NSString stringWithFormat:@"%.1f", height + distance]];
        else
            heightLabel.text = [hTemp objectForKey:[NSString stringWithFormat:@"%.1f", height - distance]];
    }

 
    
}

- (IBAction)milestonesButton:(id)sender {
}

- (IBAction)genderChange:(id)sender {
    
    if(self.gender.selectedSegmentIndex == 0){
        weightChartUse= weightChartB;
        heightChartUse= weightChartB;
        firstScreen.image = [UIImage imageNamed:@"boy.png"];}
    else{
        weightChartUse = weightChartG;
        heightChartUse = weightChartG;
        firstScreen.image = [UIImage imageNamed:@"girl.png"];}
    
 
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return [textField resignFirstResponder];
}

#pragma mark Picker data source methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    
    return [ageData count];
}


#pragma mark Picker delegate method
-(NSString *)pickerView:(UIPickerView *)pickerView
            titleForRow:(NSInteger)row
           forComponent:(NSInteger)component
{
    
    return [ageData objectAtIndex:row];
    
}
@end
