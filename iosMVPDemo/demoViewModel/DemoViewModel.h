//
//  DemoModel.h
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoViewModel : NSObject

@property (nonatomic, copy) NSString* userName;
@property (nonatomic, copy) NSString* password;

- (bool) isPasswordValid;

@end
