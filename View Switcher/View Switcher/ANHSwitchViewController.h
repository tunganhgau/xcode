//
//  ANHSwitchViewController.h
//  View Switcher
//
//  Created by Anh Nguyen on 2/7/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ANHBlueViewController;
@class ANHYellowViewController;

@interface ANHSwitchViewController : UIViewController

@property (strong, nonatomic) ANHBlueViewController *blueViewController;
@property (strong, nonatomic) ANHYellowViewController * yellowViewController;

- (IBAction)switchView:(id)sender;



@end
