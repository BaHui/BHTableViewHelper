//
//  BHExampleViewController.h
//  BHDemo
//
//  Created by QiaoBaHui on 2018/11/29.
//  Copyright © 2018年 QiaoBaHui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHFirstTableViewHelper.h"
#import "BHSecondTableViewHelper.h"

static NSString *const BHExampleCellReuseId = @"BHExampleCellReuseId";

@interface BHExampleViewController : UIViewController

@property (nonatomic, strong) BHFirstTableViewHelper *firstTableViewHelper;
@property (nonatomic, strong) BHSecondTableViewHelper *secondTableViewHelper;

@property (weak, nonatomic) IBOutlet UITableView *firstTableView;
@property (weak, nonatomic) IBOutlet UITableView *secondTableView;

+ (instancetype)create;

@end
