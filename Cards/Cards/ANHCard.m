//
//  ANHCard.m
//  Cards
//
//  Created by Anh Nguyen on 2/19/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHCard.h"

@implementation ANHCard

- (int) match:(NSArray *)otherCards{
    int score = 0;
    for (ANHCard *card in otherCards ){
        if ([self.contents isEqual:card.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
