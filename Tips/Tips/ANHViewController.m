//
//  ANHViewController.m
//  Tips
//
//  Created by Anh Nguyen on 2/20/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHViewController.h"

@interface ANHViewController ()

@end

@implementation ANHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.billAmount = 0;
    self.tipPercent = 15;
    self.tipAmount = 0;
    self.total = 0;
    self.pricePerPerson = 0;
    self.people = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backGroundTap:(id)sender{
    [sender resignFirstResponder];
    [self.billField resignFirstResponder];
}

- (IBAction)billChanged:(UITextField *)sender {
    NSString *newBill = sender.text;
    self.billAmount = [newBill doubleValue];
    [self calculate];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    self.tipPercent= sender.value;
    self.percentLabel.text = [NSString stringWithFormat:@"%.0f",self.tipPercent];
    [self calculate];
}

- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    self.people = sender.selectedSegmentIndex + 1;
    [self calculate];
}

- (void) calculate{
    self.tipAmount = self.billAmount*self.tipPercent/100;
    self.total = self.billAmount+self.tipAmount;
    self.pricePerPerson = self.total/self.people;
    [self updateValue];
}
- (void) updateValue{
    self.tipLabel.text = [NSString stringWithFormat:@"%.2f",self.tipAmount];
    self.totalLabel.text = [NSString stringWithFormat:@"%.2f",self.total];
    self.personLabel.text = [NSString stringWithFormat:@"%.2f",self.pricePerPerson];
}
@end
