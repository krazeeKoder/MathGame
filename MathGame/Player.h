//
//  Player.h
//  MathGame
//
//  Created by Anthony Tulai on 2016-01-18.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (assign) NSUInteger livesLeft;
@property (assign) bool hasLostTheGame;
@property (strong) NSString *playerGuess;
@property (assign) bool isActivePlayer;
@property (strong) NSString *playerName;


-(instancetype) initWithActivePlayer: (bool)activePlayer playerName:(NSString *)playerName;
-(void) loseALife;
-(void) updateGuessWithValue: (NSString *)guess;

@end
