//
//  ANHPlayingCard.m
//  Cards
//
//  Created by Anh Nguyen on 2/19/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHPlayingCard.h"

@implementation ANHPlayingCard

- (NSString *) contents{
    NSArray *rankedStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    return [rankedStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuit{
    return @[@"
}

@end
