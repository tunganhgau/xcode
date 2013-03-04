//
//  ANHViewController.m
//  Tic Tac Toe
//
//  Created by Anh Nguyen on 3/3/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHViewController.h"



@interface ANHViewController ()
@property (copy, nonatomic) NSString  *playerWin;
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
    self.xImg = [UIImage imageNamed:@"X.png"];
    self.player = 1;
    self.whoseTurn.text = @"X can go";
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
        [self resetBoard];
        return 1;
    }
    else {
        [self updatePlayerInfo];
        return 0;
    }
}

- (void) declareWinner{
    NSString *message = [NSString stringWithFormat:@"Player %@ won the game", self.playerWin];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Congratulations" message:message   delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
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
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    
    //check to see if the point that was touched is in one of the UIImage views
    if(CGRectContainsPoint([self.s1 frame], [touch locationInView:self.view])){
        if(self.player==1){ self.s1.image = self.xImg; }
        if(self.player==2){ self.s1.image = oImg; }
    }
    
    if(CGRectContainsPoint([self.s2 frame], [touch locationInView:self.view])){
        if(self.player==1){ s2.image = xImg; }
        if(self.player==2){ s2.image = oImg; }
    }
    
    if(CGRectContainsPoint([s3 frame], [touch locationInView:self.view])){
        if(self.player==1){ s3.image = xImg; }
        if(self.player==2){ s3.image = oImg; }
    }
    
    if(CGRectContainsPoint([s4 frame], [touch locationInView:self.view])){
        if(player==1){ s4.image = xImg; }
        if(player==2){ s4.image = oImg; }
    }
    
    if(CGRectContainsPoint([s5 frame], [touch locationInView:self.view])){
        if(player==1){ s5.image = xImg; }
        if(player==2){ s5.image = oImg; }
    }
    
    
    if(CGRectContainsPoint([s6 frame], [touch locationInView:self.view])){
        if(player==1){ s6.image = xImg; }
        if(player==2){ s6.image = oImg; }
    }
    
    if(CGRectContainsPoint([s7 frame], [touch locationInView:self.view])){
        if(player==1){ s7.image = xImg; }
        if(player==2){ s7.image = oImg; }
    }
    
    if(CGRectContainsPoint([s8 frame], [touch locationInView:self.view])){
        if(player==1){ s8.image = xImg; }
        if(player==2){ s8.image = oImg; }
    }
    
    if(CGRectContainsPoint([s9 frame], [touch locationInView:self.view])){
        if(player==1){ s9.image = xImg; }
        if(player==2){ s9.image = oImg; }
    }
    
    
    [self checkForWin];
    
}
@end
