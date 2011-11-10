//
//  NumberOperator.m
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumberOperator.h"

@implementation NumberOperator

- (id)initWithString:(NSString*)number1 andString:(NSString*)number2 {
    float f1 = [number1 floatValue];
    float f2 = [number2 floatValue];
    
    return [self initWithFloat:f1 andFloat:f2];
}

- (id)initWithFloat:(float)number1 andFloat:(float)number2 {
    _number1 = (id) [[NSNumber alloc] initWithFloat:number1];
    _number2 = (id) [[NSNumber alloc] initWithFloat:number2];
    
    return self;
}

@end
