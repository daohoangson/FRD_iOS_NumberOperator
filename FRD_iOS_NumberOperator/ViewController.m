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
@synthesize txtNumber1;
@synthesize txtNumber2;
@synthesize txtResult;
@synthesize lblOperator;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTxtNumber1:nil];
    [self setTxtNumber2:nil];
    [self setTxtResult:nil];
    [self setLblOperator:nil];
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
    [txtResult release];
    [lblOperator release];
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

- (NumberOperator*)getOp
{
    return [[NumberOperator alloc] initWithString:[txtNumber1 text] andString:[txtNumber2 text]];
}

- (IBAction)add:(id)sender {
    NumberOperator *op = [self getOp];
    NSNumber *result = [op add];
    
    [txtResult setText:[NSString stringWithFormat:@"%d", [result intValue]]];
    
    [self quickResignFirstResponder];
}

- (IBAction)subtract:(id)sender {
    NumberOperator *op = [self getOp];
    NSNumber *result = [op subtract];
    
    [txtResult setText:[NSString stringWithFormat:@"%d", [result intValue]]];
    
    [self quickResignFirstResponder];
}

- (IBAction)multiply:(id)sender {
    NumberOperator *op = [self getOp];
    NSNumber *result = [op multiply];
    
    [txtResult setText:[NSString stringWithFormat:@"%d", [result intValue]]];
    
    [self quickResignFirstResponder];
}

- (IBAction)divide:(id)sender {
    NumberOperator *op = [self getOp];
    NSNumber *result = [op divide];
    
    [txtResult setText:[NSString stringWithFormat:@"%d", [result intValue]]];
    
    [self quickResignFirstResponder];
}

@end
