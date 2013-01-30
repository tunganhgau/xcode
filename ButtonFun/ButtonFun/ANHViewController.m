//
//  ANHViewController.m
//  ButtonFun
//
//  Created by Anh Nguyen on 1/30/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHViewController.h"

@interface ANHViewController ()

@end

@implementation ANHViewController

@synthesize statusLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed", title];
    //statusLabel.text = plainText;
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc]
                                             initWithString:plainText];
    NSDictionary *attributes = @{
    NSFontAttributeName : [UIFont boldSystemFontOfSize:statusLabel.font.pointSize]
    };
    NSRange nameRange = [plainText rangeOfString:title];
    [styledText setAttributes:attributes
                        range:nameRange];
    statusLabel.attributedText = styledText;
}
@end
