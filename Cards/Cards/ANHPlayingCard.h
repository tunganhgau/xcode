//
//  ANHPlayingCard.h
//  Cards
//
//  Created by Anh Nguyen on 2/19/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHCard.h"

@interface ANHPlayingCard : ANHCard

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSInteger rank;

+ (NSArray *) validSuit;

@end
