//
//  EView.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/24.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "EView.h"

@implementation EView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest withEvent ---E_View---");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"hitTest withEvent ---E_View--- %@",view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"pointInside withEvent ---E_view---");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"pointInside withEvent ---E_view--- %d",isInside);
    return isInside;
}

@end
