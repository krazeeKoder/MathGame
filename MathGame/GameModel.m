//
//  GameModel.m
//  MathGame
//
//  Created by Anthony Tulai on 2016-01-18.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"

@implementation GameModel


-(instancetype) init {
    self = [super init];
    if (self) {
        _firstValue = @"";
        _firstValue = @"";
        _additionSolution = @0;
        _additionSolutionAsText = @"";
    }
    return self;
}

-(void)generateMathProblem {
    NSUInteger firstNumber = arc4random_uniform(20) + 1;
    NSUInteger secondNumber = arc4random_uniform(20) + 1;
    NSUInteger sum = firstNumber + secondNumber;
    
    self.firstValue = [@(firstNumber) stringValue];
    self.secondValue = [@(secondNumber) stringValue];
    self.additionSolution = @(sum);
    self.additionSolutionAsText = [self.additionSolution stringValue];
    
}

-(void)checkPlayerSolution: (Player *)playerGuessing {
    if (![self.additionSolutionAsText isEqual: playerGuessing.playerGuess]) {
        playerGuessing.livesLeft = playerGuessing.livesLeft - 1;
    }
    if (playerGuessing.livesLeft < 1) {
        playerGuessing.hasLostTheGame = YES;
    }
    
    self.additionSolutionAsText = @"";
    
    
}

@end
