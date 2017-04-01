//
//  ViewController.m
//  iosMVPDemo
//
//  Created by mmc on 2017/4/1.
//  Copyright © 2017年 mmc. All rights reserved.
//

#import "ViewController.h"

#import "IDemoViewDelegate.h"
#import "DemoPresenter.h"

#import "DemoViewModel.h"

@interface ViewController ()<IDemoViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DemoPresenter* presenter = [[DemoPresenter alloc] init];
    presenter.viewDelegate = self;
    self.presenterDelegate = presenter;
}

- (IBAction) submitButtonTapped:(id) sender
{
    DemoViewModel* viewModel = [[DemoViewModel alloc] init];
    viewModel.userName = self.userNameField.text;
    viewModel.password = self.passwordField.text;
    
    [self.presenterDelegate doLoginRequest:viewModel];
}

#pragma mark -@protocol IViewDelegate <NSObject>
- (void) showPasswordInvalidInfo
{
    NSLog(@"密码错误");
}

- (void) onRequestStart
{
    NSLog(@"网络开始");
}

- (void) onRequestSuccess
{
    NSLog(@"网络结束");
}

- (void) onRequestError
{
    
}

@end
