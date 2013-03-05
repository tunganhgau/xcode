//
//  ANHViewController.m
//  Tic Tac Toe
//
//  Created by Anh Nguyen on 3/3/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHViewController.h"
#import "ANHComputer.h"


@interface ANHViewController ()
@property (copy, nonatomic) NSString  *playerWin;
@property (nonatomic) int filledSquares;
@end

@implementation ANHViewController

@synthesize s1;
@synthesize s2;
@synthesize s3;
@synthesize s4;
@synthesize s5;
@synthesize s6;
@synthesize s7;
@synthesize s8;
@synthesize s9;



@synthesize oImg, xImg, player;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.oImg = [UIImage imageNamed:@"O.png"];
    self.xImg = [UIImage imageNamed:@"x.png"];
    self.player = 1;
    self.whoseTurn.text = @"X can go";
    self.filledSquares = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetGame:(UIButton *)sender {
    [self resetBoard];
}

- (void) updatePlayerInfo{
    if (self.player == 1) {
        self.player = 2;
        self.whoseTurn.text = @"X can go";
    }
    else{
        self.player = 1;
        self.whoseTurn.text = @"O can go";
    }
}

- (BOOL) checkForWin{
    self.filledSquares++;
    UIImage *winner;
    if (s1.image == s2.image && s2.image == s3.image && s1.image != nil) {
        winner = s1.image;
    }
    if (s4.image == s5.image && s5.image == s6.image && s4.image != nil) {
        winner = s4.image;
    }
    if (s7.image == s8.image && s8.image == s9.image && s7.image != nil) {
        winner = s7.image;
    }
    if (s1.image == s4.image && s4.image == s7.image && s1.image != nil) {
        winner = s1.image;
    }
    if (s2.image == s5.image && s5.image == s8.image && s2.image != nil) {
        winner = s2.image;
    }
    if (s3.image == s6.image && s6.image == s9.image && s3.image != nil) {
        winner = s3.image;
    }
    if (s1.image == s5.image && s5.image == s9.image && s1.image != nil) {
        winner = s1.image;
    }
    if (s3.image == s5.image && s5.image == s7.image && s3.image != nil) {
        winner = s3.image;
    }
    if (winner) {
        if (winner) {
            if (winner == xImg) {
                self.playerWin = @"X";
            }
            else
                self.playerWin = @"O";
        }
        [self declareWinner];
        return 1;
    }
    
    else {
        [self updatePlayerInfo];
        if (self.filledSquares==9) {
            [self drawAlert];
        }
        return 0;
    }
}

- (void) declareWinner{
    NSString *message = [NSString stringWithFormat:@"Player %@ won the game", self.playerWin];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Congratulations" message:message   delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (void) drawAlert{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Draw" message:@"Let's play another game"   delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    [self resetBoard];
}

- (void) resetBoard{
    self.s1.image = nil;
    self.s2.image = nil;
    self.s3.image = nil;
    self.s4.image = nil;
    self.s5.image = nil;
    self.s6.image = nil;
    self.s7.image = nil;
    self.s8.image = nil;
    self.s9.image = nil;
    self.player = 1;
    self.whoseTurn.text = @"X can go";
    self.filledSquares = 0;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    
    //check to see if the point that was touched is in one of the UIImage views
    if(CGRectContainsPoint([self.s1 frame], [touch locationInView:self.view])){
        if (s1.image) {
            [self illegalMoveAlert];
        }
        else{
            if(self.player==1){ self.s1.image = self.xImg; }
            if(self.player==2){ self.s1.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([self.s2 frame], [touch locationInView:self.view])){
        if (s2.image) {
            [self illegalMoveAlert];
        }
        else{
            if(self.player==1){ s2.image = xImg; }
            if(self.player==2){ s2.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([s3 frame], [touch locationInView:self.view])){
        if (s3.image) {
            [self illegalMoveAlert];
        }
        else{
            if(self.player==1){ s3.image = xImg; }
            if(self.player==2){ s3.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([s4 frame], [touch locationInView:self.view])){
        if (s4.image) {
            [self illegalMoveAlert];
        }
        else{
            if(player==1){ s4.image = xImg; }
            if(player==2){ s4.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([s5 frame], [touch locationInView:self.view])){
        if (s5.image) {
            [self illegalMoveAlert];
        }
        else{
            if(player==1){ s5.image = xImg; }
            if(player==2){ s5.image = oImg; }
            [self checkForWin];
        }
    }
    
    
    if(CGRectContainsPoint([s6 frame], [touch locationInView:self.view])){
        if (s6.image) {
            [self illegalMoveAlert];
        }
        else{
            if(player==1){ s6.image = xImg; }
            if(player==2){ s6.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([s7 frame], [touch locationInView:self.view])){
        if (s7.image) {
            [self illegalMoveAlert];
        }
        else{
            if(player==1){ s7.image = xImg; }
            if(player==2){ s7.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([s8 frame], [touch locationInView:self.view])){
        if (s8.image) {
            [self illegalMoveAlert];
        }
        else{
            if(player==1){ s8.image = xImg; }
            if(player==2){ s8.image = oImg; }
            [self checkForWin];
        }
    }
    
    if(CGRectContainsPoint([s9 frame], [touch locationInView:self.view])){
        if (s9.image) {
            [self illegalMoveAlert];
        }
        else{
            if(player==1){ s9.image = xImg; }
            if(player==2){ s9.image = oImg; }
            [self checkForWin];
        }
    }
    
    
}

- (void ) illegalMoveAlert{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Oooops" message:@"You cannot make this move"   delegate:nil cancelButtonTitle:@"Sorry" otherButtonTitles:nil, nil];
    [alert show];
}
@end
