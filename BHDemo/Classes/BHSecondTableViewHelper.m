//
//  BHSecondTableViewHelper.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/11/29.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import "BHSecondTableViewHelper.h"
#import "BHExampleViewController.h"
#import "BHExampleCell.h"

@implementation BHSecondTableViewHelper

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	BHExampleCell *exampleCell = [tableView dequeueReusableCellWithIdentifier:BHExampleCellReuseId forIndexPath:indexPath];
	[exampleCell updateCellWithContent:[NSString stringWithFormat:@"Second TableView : row -> %ld", (long)indexPath.row]];

	return exampleCell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 55.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
