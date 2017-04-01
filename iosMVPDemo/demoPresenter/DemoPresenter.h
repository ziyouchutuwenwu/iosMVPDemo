//
//  DemoPresenter.h
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IDemoPresenterDelegate.h"
#import "IDemoViewDelegate.h"

@interface DemoPresenter : NSObject<IDemoPresenterDelegate>

@property (nonatomic, weak) id<IDemoViewDelegate> viewDelegate;

@end
