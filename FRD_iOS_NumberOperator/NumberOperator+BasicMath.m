//
//  NumberOperator+BasicMath.m
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumberOperator+BasicMath.h"

@implementation NumberOperator (BasicMath)

- (NSNumber *)add
{
    float result = [_number1 floatValue] + [_number2 floatValue];
    return [[NSNumber alloc] initWithFloat:result];
}

- (NSNumber *)subtract
{
    float result = [_number1 floatValue] - [_number2 floatValue];
    return [[NSNumber alloc] initWithFloat:result];
}

- (NSNumber *)multiply
{
    float result = [_number1 floatValue] * [_number2 floatValue];
    return [[NSNumber alloc] initWithFloat:result];
}

- (NSNumber *)divide
{
    float result = [_number1 floatValue] / [_number2 floatValue];
    return [[NSNumber alloc] initWithFloat:result];
}

@end
