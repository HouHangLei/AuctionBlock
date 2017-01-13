//
//  UIControl+ActionBlock.h
//  pecoo
//
//  Created by pecoo on 2017/1/13.
//  Copyright © 2017年 航磊_. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SenderBlock)(id sender);

@interface UIControl (ActionBlock)

@property (nonatomic, copy) SenderBlock block;


/**
 添加一种

 @param controlEvents 触发事件的类型
 @param block 触发后的回调
 */
- (void)addControlEvents:(UIControlEvents)controlEvents block:(void (^)(id sender))block;

@end
