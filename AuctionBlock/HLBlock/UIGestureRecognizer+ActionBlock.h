//
//  UIGestureRecognizer+ActionBlock.h
//  AuctionBlock
//
//  Created by pecoo on 2017/1/13.
//  Copyright © 2017年 航磊_. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SenderBlock)(id sender);

@interface UIGestureRecognizer (ActionBlock)

@property (nonatomic, copy) SenderBlock block;


/**
 手势初始化

 @param block 点击后回调
 @return return value description
 */
- (instancetype)initWithActionBlock:(void (^)(id sender))block;

@end
