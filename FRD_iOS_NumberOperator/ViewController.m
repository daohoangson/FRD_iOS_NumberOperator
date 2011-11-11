//
//  ViewController.m
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "NumberOperator+BasicMath.h"
#import "UIView+FindFirstResponder.h"

@implementation ViewController
@synthesize btnAdd;
@synthesize btnSubtract;
@synthesize btnMultiply;
@synthesize btnDivide;
@synthesize txtNumber1;
@synthesize txtNumber2;
@synthesize lblOperator;
@synthesize btnZero;
@synthesize btnOne;
@synthesize btnTwo;
@synthesize btnThree;
@synthesize btnFour;
@synthesize btnFive;
@synthesize btnSix;
@synthesize btnSeven;
@synthesize btnEight;
@synthesize btnNine;
@synthesize btnDot;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // reset the calculator
    [self setResult:[NSNumber numberWithFloat:0.0f]];
    [self setOperator:OP_NONE];
}

- (void)viewDidUnload
{
    [self setTxtNumber1:nil];
    [self setTxtNumber2:nil];
    [self setLblOperator:nil];
    [self setBtnZero:nil];
    [self setBtnOne:nil];
    [self setBtnTwo:nil];
    [self setBtnThree:nil];
    [self setBtnFour:nil];
    [self setBtnFive:nil];
    [self setBtnSix:nil];
    [self setBtnSeven:nil];
    [self setBtnEight:nil];
    [self setBtnNine:nil];
    [self setBtnDot:nil];
    [self setBtnAdd:nil];
    [self setBtnSubtract:nil];
    [self setBtnMultiply:nil];
    [self setBtnDivide:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [txtNumber1 release];
    [txtNumber2 release];
    [lblOperator release];
    [btnZero release];
    [btnOne release];
    [btnTwo release];
    [btnThree release];
    [btnFour release];
    [btnFive release];
    [btnSix release];
    [btnSeven release];
    [btnEight release];
    [btnNine release];
    [btnDot release];
    [btnAdd release];
    [btnSubtract release];
    [btnMultiply release];
    [btnDivide release];
    [super dealloc];
}

#pragma mark Delegates

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)quickResignFirstResponder
{
    UIView *firstResponder = [[self view] findFirstResponder];
    if (firstResponder != nil) 
    {
        [firstResponder resignFirstResponder];
    }
}

#pragma mark Actions

- (IBAction)numbersOrDot:(id)sender {
    NSString *str = nil;
    
    if (sender == btnZero) {
        str = @"0";
    } else if (sender == btnOne) {
        str = @"1";
    } else if (sender == btnTwo) {
        str = @"2";
    } else if (sender == btnThree) {
        str = @"3";
    } else if (sender == btnFour) {
        str = @"4";
    } else if (sender == btnFive) {
        str = @"5";
    } else if (sender == btnSix) {
        str = @"6";
    } else if (sender == btnSeven) {
        str = @"7";
    } else if (sender == btnEight) {
        str = @"8";
    } else if (sender == btnNine) {
        str = @"9";
    } else if (sender == btnDot) {
        str = @".";
    }
    
    if (str != nil) {
        // only works if we can detect the button
        
        NSMutableString *mStr = [[NSMutableString alloc] initWithString:[self getInputNumber]];
        [mStr appendString:str];
        [self setInputNumber:mStr];
        [mStr release];
    }
    [self quickResignFirstResponder];
}

- (IBAction)someOperator:(id)sender {
    OPERATOR op = [self getOperator];
    NSString *inputNumber = [self getInputNumber];
    
    if ([inputNumber length] > 0) {
        if (op == OP_NONE) {
            // this is the first operator selected
            // and an input number is entered
            // we will accept it as the first number
            [self setResult:[NSNumber numberWithFloat:0.0f]];
            [self setInputNumber:inputNumber];
            [self setOperator:OP_ADD];
            [self calculate:sender];
        } else {
            // some op is already selected
            // just calculate it
            [self calculate:sender];
        }
    }
    
    if (sender == btnAdd) {
        [self setOperator:OP_ADD];
    } else if (sender == btnSubtract) {
        [self setOperator:OP_SUBTRACT];
    } else if (sender == btnMultiply) {
        [self setOperator:OP_MULTIPLY];
    } else if (sender == btnDivide) {
        [self setOperator:OP_DIVIDE];
    }
    
    [self quickResignFirstResponder];
}

- (IBAction)calculate:(id)sender {
    NumberOperator *numberOperator = [[NumberOperator alloc] initWithString:[self getLastResult] andString:[self getInputNumber]];
    OPERATOR op = [self getOperator];
    NSNumber *result = nil;
    
    switch (op) {
        case OP_ADD:
            result = [numberOperator add];
            break;
        case OP_SUBTRACT:
            result = [numberOperator subtract];
            break;
        case OP_MULTIPLY:
            result = [numberOperator multiply];
            break;
        case OP_DIVIDE:
            result = [numberOperator divide];
            break;
        case OP_NONE:
            // do nothing
            break;
    }
    
    if (result != nil) {
        [self setResult:result];
        [self setOperator:OP_NONE];
        [result release];
    }
}

- (IBAction)btnAbout:(id)sender {
}


#pragma mark Helper functions

- (NSString*)getLastResult {
    return txtNumber1.text;
}

- (NSString*)getInputNumber {
    return txtNumber2.text;
}

- (void)setInputNumber:(NSString*)str {
    NSArray *list = [str componentsSeparatedByString:@"."];
    int dotCount = [list count] - 1;
    
    if (dotCount <= 1) {
        // only sets the number if number of dots is zero or one
        [txtNumber2 setText:str];
    }
}

- (void)setResult:(NSNumber*)result {
    [txtNumber1 setText:[NSString stringWithFormat:@"%g", [result floatValue]]];
    [txtNumber2 setText:@""];
    [self setOperator:OP_ADD];
}

- (OPERATOR)getOperator {
    NSString *strOp = lblOperator.text;
    
    if ([strOp isEqualToString:@"+"]) {
        return OP_ADD;
    } else if ([strOp isEqualToString:@"-"]) {
        return OP_SUBTRACT;
    } else if ([strOp isEqualToString:@"x"]) {
        return OP_MULTIPLY;
    } else if ([strOp isEqualToString:@"/"]) {
        return OP_DIVIDE;
    } else {
        return OP_NONE;
    }
}

- (void)setOperator:(OPERATOR)op {
    switch (op) {
        case OP_ADD:
            [lblOperator setText:@"+"];
            break;
        case OP_SUBTRACT:
            [lblOperator setText:@"-"];
            break;
        case OP_MULTIPLY:
            [lblOperator setText:@"x"];
            break;
        case OP_DIVIDE:
            [lblOperator setText:@"/"];
            break;
        case OP_NONE:
            [lblOperator setText:@""];
            break;
    }
}

@end
