//
//  BHExampleCell.m
//  BHDemo
//
//  Created by QiaoBaHui on 2018/11/29.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import "BHExampleCell.h"

@implementation BHExampleCell

- (void)awakeFromNib {
	[super awakeFromNib];
}

- (void)updateCellWithContent:(NSString *)content {
	self.content = content;
	[self reloadData];
}

#pragma mark - Private Methods

- (void)reloadData {
	self.contentLabel.text = self.content;
}

@end
