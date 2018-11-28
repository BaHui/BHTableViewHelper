//
//  BHExampleViewController.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/11/29.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController.h"
#import "BHExampleViewController+Configure.h"

@interface BHExampleViewController ()

@end

static NSString *const DEMO_VIEWS_STORYBOARD_NAME = @"DemoViews";


@implementation BHExampleViewController

+ (instancetype)create {
  UIStoryboard *demoViewsStoryboard = [UIStoryboard storyboardWithName:DEMO_VIEWS_STORYBOARD_NAME bundle:nil];
  return [demoViewsStoryboard instantiateViewControllerWithIdentifier:NSStringFromClass([BHExampleViewController class])];
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];
	[self initProperties];
	[self configureViews];
}

@end

