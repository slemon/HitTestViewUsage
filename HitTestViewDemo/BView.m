//
//  BView.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/24.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "BView.h"

@implementation BView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest withEvent ---B_View---");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"hitTest withEvent ---B_View--- %@",view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"pointInside withEvent ---B_view---");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"pointInside withEvent ---B_view--- %d",isInside);
    return isInside;
}

@end
