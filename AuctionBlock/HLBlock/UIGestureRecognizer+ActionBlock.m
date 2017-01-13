//
//  UIGestureRecognizer+ActionBlock.m
//  AuctionBlock
//
//  Created by pecoo on 2017/1/13.
//  Copyright © 2017年 航磊_. All rights reserved.
//

#import "UIGestureRecognizer+ActionBlock.h"
#import <objc/runtime.h>

static const char *key = "block";

@implementation UIGestureRecognizer (ActionBlock)

- (void)setBlock:(SenderBlock)block{
    
    objc_setAssociatedObject(self, key, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (SenderBlock)block{
    
    return objc_getAssociatedObject(self, key);
}

- (instancetype)initWithActionBlock:(void (^)(id sender))block{

    self = [self init];

    self.block = block;
    
    [self addTarget:self action:@selector(invoke:)];

    return self;
}

- (void)invoke:(id)sender{
    
    if (self.block) self.block(sender);
}


@end
