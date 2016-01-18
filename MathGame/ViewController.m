//
//  ViewController.m
//  MathGame
//
//  Created by Anthony Tulai on 2016-01-18.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *player1Score;

@property (strong, nonatomic) IBOutlet UILabel *player2Score;
@property (strong, nonatomic) IBOutlet UILabel *currentPlayerGuess;
@property (strong, nonatomic) IBOutlet UILabel *mathProblem;

@property (strong) GameModel *currentGame;
@property (strong) Player *player1;
@property (strong) Player *player2;
@property (strong) Player *currentPlayer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentGame = [[GameModel alloc]init];
    self.player1 = [[Player alloc]initWithActivePlayer:YES playerName:@"Player1"];
    self.player2 = [[Player alloc]initWithActivePlayer:NO playerName:@"Player2"];
    self.player1Score.text = [@"Player 1 Lives Left: " stringByAppendingString:[@(self.player1.livesLeft) stringValue]];
    self.player2Score.text = [@"Player 2 Lives Left: " stringByAppendingString:[@(self.player2.livesLeft) stringValue]];
    self.currentPlayer = self.player1;
    
    [self.currentGame generateMathProblem];
    self.mathProblem.text = [self.player1.playerName stringByAppendingString:@": "];
    self.mathProblem.text = [self.mathProblem.text stringByAppendingString:self.currentGame.firstValue];
    self.mathProblem.text = [self.mathProblem.text stringByAppendingString:@" + "];
    self.mathProblem.text = [self.mathProblem.text stringByAppendingString:self.currentGame.secondValue];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)setNumber0:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"0"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber1:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"1"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber2:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"2"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber3:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"3"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber4:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"4"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber5:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"5"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber6:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"6"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber7:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"7"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber8:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"8"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}
- (IBAction)setNumber9:(id)sender {
    [self.currentPlayer updateGuessWithValue:@"9"];
    self.currentPlayerGuess.text = [@"Guess: " stringByAppendingString:self.currentPlayer.playerGuess];
}

- (IBAction)enterGuess:(id)sender {
    [self.currentGame checkPlayerSolution:self.currentPlayer];
    if (self.currentPlayer.hasLostTheGame) {
        self.currentPlayerGuess.text  = [self.currentPlayer.playerName stringByAppendingString:@" Has lost."];
    }
    else {
        self.player1Score.text = [@"Player 1 Lives Left: " stringByAppendingString:[@(self.player1.livesLeft) stringValue]];
        self.player2Score.text = [@"Player 2 Lives Left: " stringByAppendingString:[@(self.player2.livesLeft) stringValue]];
        self.currentPlayer.playerGuess = @"";
        [self.currentGame generateMathProblem];
        self.mathProblem.text = [self.player1.playerName stringByAppendingString:@": "];
        self.mathProblem.text = [self.mathProblem.text stringByAppendingString:self.currentGame.firstValue];
        self.mathProblem.text = [self.mathProblem.text stringByAppendingString:@" + "];
        self.mathProblem.text = [self.mathProblem.text stringByAppendingString:self.currentGame.secondValue];
        self.currentPlayerGuess.text = @"Guess : ";
        if (self.player1.isActivePlayer) {
            self.player1.isActivePlayer = NO;
            self.player2.isActivePlayer = YES;
            self.currentPlayer = self.player2;
        }
        else{
            self.player2.isActivePlayer = NO;
            self.player1.isActivePlayer = YES;
            self.currentPlayer = self.player1;
        }
    }
    
    
    
}


@end
