//
//  ANHViewController.h
//  Control Fun
//
//  Created by Anh Nguyen on 1/30/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANHViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;

- (IBAction)textFieldDoneEditing:(id)sender;

- (IBAction)backgroundTap:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *slideValue;

- (IBAction)valueChanged:(UISlider *)sender;


@end
