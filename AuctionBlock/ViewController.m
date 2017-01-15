//
//  ViewController.m
//  AuctionBlock
//
//  Created by pecoo on 2017/1/13.
//  Copyright © 2017年 航磊_. All rights reserved.
//

#import "ViewController.h"
#import "UIControl+ActionBlock.h"
#import "UIGestureRecognizer+ActionBlock.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 100, 100, 100);
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addControlEvents:UIControlEventTouchUpInside block:^(id sender) {
       
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"点击了button" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
    }];
    [self.view addSubview:button];
    
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    label.userInteractionEnabled = YES;
    label.backgroundColor = [UIColor grayColor];
    label.text = @"Label";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithActionBlock:^(id sender) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"点击了label" message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alertView show];
    }];
    [label addGestureRecognizer:tap];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
