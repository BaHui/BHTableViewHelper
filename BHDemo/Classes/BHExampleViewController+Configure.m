//
//  BHExampleViewController+Configure.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/11/29.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import "BHExampleViewController+Configure.h"

@implementation BHExampleViewController (Configure)

- (void)initProperties {
	[self initTableViewHelpers];
}

- (void)configureViews {
	[self configureTableView];
}

#pragma mark - Private Methods

- (void)initTableViewHelpers {
	self.firstTableViewHelper = [BHFirstTableViewHelper new];
	self.secondTableViewHelper = [BHSecondTableViewHelper new];
}

- (void)configureTableView {
	self.firstTableView.delegate = self.firstTableViewHelper;
	self.firstTableView.dataSource = self.firstTableViewHelper;

	self.secondTableView.delegate = self.secondTableViewHelper;
	self.secondTableView.dataSource = self.secondTableViewHelper;

	[self.firstTableView registerNib:[UINib nibWithNibName:@"BHExampleCell" bundle:nil] forCellReuseIdentifier:BHExampleCellReuseId];
	[self.secondTableView registerNib:[UINib nibWithNibName:@"BHExampleCell" bundle:nil] forCellReuseIdentifier:BHExampleCellReuseId];
}

@end
