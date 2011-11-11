//
//  MyUIView.m
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MyUIView.h"
#import "UIView+FindFirstResponder.h"

@implementation MyUIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UIView *firstResponsder = [self findFirstResponder];
    if (firstResponsder != nil) {
        [firstResponsder resignFirstResponder];
    }
}

@end
