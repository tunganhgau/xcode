//
//  ANHCard.h
//  Cards
//
//  Created by Anh Nguyen on 2/19/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANHCard : NSObject

@property (strong, nonatomic) NSArray *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isPlayable) BOOL unplayable;

- (int) match:(NSArray *) otherCards;

@end
