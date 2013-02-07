//
//  ANHSwitchViewController.m
//  View Switcher
//
//  Created by Anh Nguyen on 2/7/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHSwitchViewController.h"
#import "ANHBlueViewController.h"
#import "ANHYellowViewController.h"

@interface ANHSwitchViewController ()

@end

@implementation ANHSwitchViewController

- (IBAction)switchView:(id)sender{
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            self.yellowViewController = [[ANHYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
        }
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    }
    else {
        if (self.blueViewController == nil){
            self.blueViewController = [[ANHBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
        }
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewController.view atIndex:0];
    }
}

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
    self.blueViewController = [[ANHBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    }
    else {
        self.yellowViewController = nil;
    }
}

@end
