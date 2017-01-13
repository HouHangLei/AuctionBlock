//
//  UIControl+ActionBlock.m
//  pecoo
//
//  Created by pecoo on 2017/1/13.
//  Copyright © 2017年 航磊_. All rights reserved.
//

#import "UIControl+ActionBlock.h"
#import <objc/runtime.h>
static const char *key = "block";
@implementation UIControl (ActionBlock)

- (void)setBlock:(SenderBlock)block{

    objc_setAssociatedObject(self, key, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (SenderBlock)block{

    return objc_getAssociatedObject(self, key);
}

- (void)addControlEvents:(UIControlEvents)controlEvents block:(void (^)(id sender))block {


    self.block = block;
    [self addTarget:self action:@selector(invoke:) forControlEvents:controlEvents];
}

- (void)invoke:(id)sender{

    if (self.block) self.block(sender);
}

@end
