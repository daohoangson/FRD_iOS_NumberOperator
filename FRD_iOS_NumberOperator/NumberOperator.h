//
//  NumberOperator.h
//  FRD_iOS_NumberOperator
//
//  Created by Dao Hoang Son on 11/9/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NumberOperator : NSObject {
    id _number1;
    id _number2;
}

- (id)initWithString:(NSString*)number1 andString:(NSString*)number2;

- (id)initWithFloat:(float)number1 andFloat:(float)number2;

@end
