//
//  ViewController.h
//  iosMVPDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "demoDelegates/IDemoPresenterDelegate.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField* userNameField;
@property (nonatomic, strong) IBOutlet UITextField* passwordField;

@property (nonatomic, strong ) id<IDemoPresenterDelegate> presenterDelegate;

- (IBAction) submitButtonTapped:(id) sender;

@end
