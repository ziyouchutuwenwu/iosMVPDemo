//
//  DemoModel.m
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import "DemoViewModel.h"
#import "PasswordValidator.h"

@implementation DemoViewModel

- (bool) isPasswordValid
{
    return [PasswordValidator isValid:_password];
}

@end
