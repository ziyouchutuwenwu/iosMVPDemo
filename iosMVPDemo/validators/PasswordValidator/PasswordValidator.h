//
//  PasswordValidator.h
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PasswordValidator : NSObject

+ (bool) isValid:(NSString*)password;

@end
