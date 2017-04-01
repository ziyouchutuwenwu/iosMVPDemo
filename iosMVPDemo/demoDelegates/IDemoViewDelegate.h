//
//  IViewDelegate.h
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IDemoViewDelegate <NSObject>

//
- (void) showPasswordInvalidInfo;

//网络返回
- (void) onRequestStart;
- (void) onRequestSuccess;
- (void) onRequestError;

@end
