//
//  PasswordValidator.m
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import "PasswordValidator.h"

@implementation PasswordValidator

+ (bool) isValid:(NSString*)password
{
    if ( [password length] >=6)
    {
        return true;
    }
    
    return false;
}

@end
