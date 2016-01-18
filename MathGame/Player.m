//
//  Player.m
//  MathGame
//
//  Created by Anthony Tulai on 2016-01-18.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype) initWithActivePlayer: (bool)activePlayer playerName:(NSString *)playerName {
    self = [super init];
    if (self) {
        _livesLeft = 3;
        _hasLostTheGame = NO;
        _playerGuess = @"";
        _isActivePlayer = activePlayer;
        _playerName = playerName;
    }
    return self;
}

-(void) loseALife {
    self.livesLeft = self.livesLeft - 1;
    if (self.livesLeft < 1) {
        self.hasLostTheGame = YES;
    }
}

-(void) updateGuessWithValue: (NSString *)guess {
    self.playerGuess = [self.playerGuess stringByAppendingString:guess];
}


@end
