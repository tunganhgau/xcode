//
//  ANHDeck.h
//  Cards
//
//  Created by Anh Nguyen on 2/19/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANHCard.h"

@interface ANHDeck : NSObject
@property (strong, nonatomic) NSMutableArray *cards;
- (void) addCard:(ANHCard *) card atTop:(BOOL) isTop;
- (ANHCard *) drawRandomCard;

@end
