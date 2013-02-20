//
//  ANHDeck.m
//  Cards
//
//  Created by Anh Nguyen on 2/19/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import "ANHDeck.h"


@implementation ANHDeck

- (NSMutableArray *) cards{
    if (!_cards) {
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

- (void) addCard:(ANHCard *)card atTop:(BOOL)isTop{
    if (isTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else{
        [self.cards addObject:card];
    }
}

- (ANHCard *) drawRandomCard{
    ANHCard *newCard = nil;
    if (self.cards.count) { 
        unsigned index = arc4random() % self.cards.count;
        newCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return newCard;
}

@end
