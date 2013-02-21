//
//  ANHViewController.h
//  Tips
//
//  Created by Anh Nguyen on 2/20/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANHViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *billField;

@property (weak, nonatomic) IBOutlet UISlider *tipSlider;

@property (weak, nonatomic) IBOutlet UISegmentedControl *peopleSegment;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *percentLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *personLabel;


@property (nonatomic) double billAmount;
@property (nonatomic) double tipPercent;
@property (nonatomic) double tipAmount;
@property (nonatomic) double total;
@property (nonatomic) double pricePerPerson;
@property (nonatomic) double people;

- (void) calculate;
- (void) updateValue;
- (IBAction)backGroundTap:(id)sender;
- (IBAction)billChanged:(UITextField *)sender;
- (IBAction)sliderChanged:(UISlider *)sender;
- (IBAction)segmentChanged:(UISegmentedControl *)sender;

@end
