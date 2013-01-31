//
//  ANHViewController.m
//  Control Fun
//
//  Created by Anh Nguyen on 1/30/13.
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
    self.doSomethingButton.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction)valueChanged:(UISlider *)sender{
    int value = lroundf(sender.value);
    self.slideValue.text = [NSString stringWithFormat:@"%d",value];
}

- (IBAction)switchChanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}


- (IBAction)toggleControls:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }
    else {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:@"No Way"
                                  destructiveButtonTitle:@"Yes, I am sure"
                                  otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString *msg = nil;
        if (self.nameField.text.length > 0) {
            msg = [NSString stringWithFormat:@"You can breathe easy %@, everything went well",self.nameField.text];
        }
        else {
            msg = @"You can breathe easy, everything went well";
        }
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Somehing was done"
                              message:msg
                              delegate:self
                              cancelButtonTitle:@"Phew"
                              otherButtonTitles:nil];
        [alert show];
    }
    
}
@end
