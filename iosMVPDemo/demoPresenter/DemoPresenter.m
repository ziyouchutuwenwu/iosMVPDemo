//
//  DemoPresenter.m
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import "DemoPresenter.h"

@implementation DemoPresenter

#pragma mark -@protocol IPresenterDelegate <NSObject>
- (void) doLoginRequest:(DemoViewModel*)viewModel
{
    if ( ![viewModel isPasswordValid] )
    {
        if ( [self.viewDelegate conformsToProtocol:@protocol(IDemoViewDelegate)] &&
            [self.viewDelegate respondsToSelector:@selector(showPasswordInvalidInfo)] )
        {
            [self.viewDelegate showPasswordInvalidInfo];
        }
    }
    else
    {
        //自定义业务
        
        //这段可以假设网络请求开始以后的回调
        if ( [self.viewDelegate conformsToProtocol:@protocol(IDemoViewDelegate)] &&
            [self.viewDelegate respondsToSelector:@selector(onRequestStart)] )
        {
            [self.viewDelegate onRequestStart];
        }
        
        sleep(3);
        
        //这段可以假设网络请求结束以后的回调
        if ( [self.viewDelegate conformsToProtocol:@protocol(IDemoViewDelegate)] &&
            [self.viewDelegate respondsToSelector:@selector(onRequestSuccess)] )
        {
            [self.viewDelegate onRequestSuccess];
        }
    }
}

@end
