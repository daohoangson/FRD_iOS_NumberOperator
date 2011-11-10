//
//  NumberOperator.m
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NumberOperator.h"

@implementation NumberOperator

- (id)initWithString:(NSString*)number1 andString:(NSString*)number2
{
    int i1 = [number1 intValue];
    int i2 = [number2 intValue];
    
    return [self initWithInt:i1 andNumber:i2];
}

- (id)initWithInt:(int)number1 andNumber:(int)number2
{
    _number1 = (id) [[NSNumber alloc] initWithInt:number1];
    _number2 = (id) [[NSNumber alloc] initWithInt:number2];
    
    return self;
}

@end
