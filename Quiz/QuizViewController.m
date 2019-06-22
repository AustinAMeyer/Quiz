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

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    //call the init method implemented by superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
     
     if (self) {
         //create 2 arrays with filled with question and answer
         //and make the pointers point to them
         self.questions = @[@"From what is cognac made?",
                            @"What is 7+7]",
                            @"What is the capitol of Vermont"];
         self.answers = @[@"Grapes",
                          @"14",
                          @"Montpelier"];
         
     }
     
     // Return the address of the new object
     return self;
    
}


    


- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    self.currentQuestionIndex++;
    
    //Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        
        //Go back to the first question
        self.currentQuestionIndex = 0;
        
    }
    
    //get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //Display the string in the question label
    self.questionLabel.text = question;
    
    //Reset the answer label
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender
{
   
    //What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //display it in answer label
    self.answerLabel.text = answer;
    
}

@end
