//
//  IPresenterDelegate.h
//  mvpDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoViewModel.h"

@protocol IDemoPresenterDelegate <NSObject>

- (void) doLoginRequest:(DemoViewModel*)viewModel;

@end
