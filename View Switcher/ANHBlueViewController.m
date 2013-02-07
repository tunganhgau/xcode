//
//  ANHBlueViewController.m
//  View Switcher
//
//  Created by Anh Nguyen on 2/7/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHBlueViewController.h"

@interface ANHBlueViewController ()

@end

@implementation ANHBlueViewController

- (IBAction)blueButtonPressed{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Blue View button pressed" message:@"You pressed the button on the blue view" delegate:nil cancelButtonTitle:@"Yes I did" otherButtonTitles:nil];
    [alert show];
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
