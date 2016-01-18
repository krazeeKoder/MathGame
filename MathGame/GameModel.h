//
//  GameModel.h
//  MathGame
//
//  Created by Anthony Tulai on 2016-01-18.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;

@interface GameModel : NSObject

@property (strong) NSString *firstValue;
@property (strong) NSString *secondValue;
@property (strong) NSNumber *additionSolution;
@property (strong) NSString *additionSolutionAsText;


-(void)generateMathProblem;

-(void)checkPlayerSolution: (Player *)playerGuessing;
@end
