//
//  QuizViewController.m
//  Quiz
//
//  Created by Alec Meyer on 6/18/19.
//  Copyright © 2019 Austin Meyer. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

- (IBAction)showQuestion:(id)sender
{
    
}

- (IBAction)showAnswer:(id)sender
{
    
}

@end
