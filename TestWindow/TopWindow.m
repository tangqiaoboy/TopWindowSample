//
//  TopWindow.m
//  TestWindow
//
//  Created by TangQiao on 12-9-8.
//  Copyright (c) 2012年 TangQiao. All rights reserved.
//

#import "TopWindow.h"

@implementation TopWindow

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton * button = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
        [button setTitle:@"hide" forState:(UIControlStateNormal)];
        button.frame = CGRectMake(0, 0, 100, 100);
        button.center = CGPointMake(320/2, 100);
        [button addTarget:self action:@selector(hide) forControlEvents:(UIControlEventTouchUpInside)];
        self.windowLevel = UIWindowLevelAlert;
        self.hidden = YES;
        [self addSubview:button];
        self.frame = [[UIScreen mainScreen] bounds];
        self.backgroundColor = [UIColor colorWithWhite:0.0f alpha:0.5];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)hide {
    self.hidden = YES;
}

- (void)show {
    self.hidden = NO;
}

@end
