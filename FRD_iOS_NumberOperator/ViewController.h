//
//  ViewController.h
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumberOperator.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UITextField *txtNumber1;
@property (retain, nonatomic) IBOutlet UITextField *txtNumber2;
@property (retain, nonatomic) IBOutlet UITextField *txtResult;
@property (retain, nonatomic) IBOutlet UILabel *lblOperator;

- (NumberOperator*)getOp;
- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;

- (void)quickResignFirstResponder;

@end
