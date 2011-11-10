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
    int result = [_number1 intValue] + [_number2 intValue];
    return [[NSNumber alloc] initWithInt:result];
}

- (NSNumber *)subtract
{
    int result = [_number1 intValue] - [_number2 intValue];
    return [[NSNumber alloc] initWithInt:result];
}

- (NSNumber *)multiply
{
    int result = [_number1 intValue] * [_number2 intValue];
    return [[NSNumber alloc] initWithInt:result];
}

- (NSNumber *)divide
{
    int result = [_number1 intValue] / [_number2 intValue];
    return [[NSNumber alloc] initWithInt:result];
}

@end
