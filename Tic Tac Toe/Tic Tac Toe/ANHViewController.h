//
//  ANHViewController.h
//  Tic Tac Toe
//
//  Created by Anh Nguyen on 3/3/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANHViewController : UIViewController<UIAlertViewDelegate>
- (IBAction)resetGame:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *board;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UILabel *whoseTurn;
@property (weak, nonatomic) IBOutlet UIImageView *s1;
@property (weak, nonatomic) IBOutlet UIImageView *s2;
@property (weak, nonatomic) IBOutlet UIImageView *s3;
@property (weak, nonatomic) IBOutlet UIImageView *s4;
@property (weak, nonatomic) IBOutlet UIImageView *s5;
@property (weak, nonatomic) IBOutlet UIImageView *s6;
@property (weak, nonatomic) IBOutlet UIImageView *s7;
@property (weak, nonatomic) IBOutlet UIImageView *s8;
@property (weak, nonatomic) IBOutlet UIImageView *s9;

//@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *squares;

//- (IBAction) squareClicked:(id)sender;

@property (nonatomic, retain) UIImage *xImg;
@property (nonatomic, retain) UIImage *oImg;
@property (nonatomic) NSUInteger player;

- (void) updatePlayerInfo;
- (BOOL) checkForWin;
- (void) resetBoard;

@end
