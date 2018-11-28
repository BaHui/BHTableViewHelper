//
//  BHExampleCell.h
//  BHDemo
//
//  Created by QiaoBaHui on 2018/11/29.
//  Copyright © 2018 QiaoBaHui. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BHExampleCell : UITableViewCell

@property (nonatomic, copy) NSString *content;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

- (void)updateCellWithContent:(NSString *)content;

@end

NS_ASSUME_NONNULL_END
