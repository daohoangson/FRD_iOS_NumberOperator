//
//  ViewController.h
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumberOperator.h"

typedef enum _OPERATOR {
    OP_ADD,
    OP_SUBTRACT,
    OP_MULTIPLY,
    OP_DIVIDE
} OPERATOR ;

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UITextField *txtNumber1;
@property (retain, nonatomic) IBOutlet UITextField *txtNumber2;
@property (retain, nonatomic) IBOutlet UILabel *lblOperator;

@property (retain, nonatomic) IBOutlet UIButton *btnZero;
@property (retain, nonatomic) IBOutlet UIButton *btnOne;
@property (retain, nonatomic) IBOutlet UIButton *btnTwo;
@property (retain, nonatomic) IBOutlet UIButton *btnThree;
@property (retain, nonatomic) IBOutlet UIButton *btnFour;
@property (retain, nonatomic) IBOutlet UIButton *btnFive;
@property (retain, nonatomic) IBOutlet UIButton *btnSix;
@property (retain, nonatomic) IBOutlet UIButton *btnSeven;
@property (retain, nonatomic) IBOutlet UIButton *btnEight;
@property (retain, nonatomic) IBOutlet UIButton *btnNine;
@property (retain, nonatomic) IBOutlet UIButton *btnDot;
- (IBAction)numbersOrDot:(id)sender;

- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)calculate:(id)sender;

- (NSString*)getLastResult;
- (NSString*)getInputNumber;
- (void)setInputNumber:(NSString*)str;
- (void)setResult:(NSNumber*)result;
- (OPERATOR)getOperator;
- (void)setOperator:(OPERATOR)op;

- (void)quickResignFirstResponder;

@end
