//
//  ANHComputer.h
//  Tic Tac Toe
//
//  Created by Anh Nguyen on 3/4/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANHComputer : NSObject

@property (strong, nonatomic) NSDictionary *possibleMoves;
@property (nonatomic) BOOL AI;

@end
