//
//  ANHYellowViewController.m
//  View Switcher
//
//  Created by Anh Nguyen on 2/7/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHYellowViewController.h"

@interface ANHYellowViewController ()

@end

@implementation ANHYellowViewController

- (IBAction)yellowButtonPressed{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Yellow button pressed" message:@"You pressed the button on the yellow view" delegate:nil cancelButtonTitle:@"Yes I did" otherButtonTitles:nil];
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
