//
//  DView.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/24.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "DView.h"

@implementation DView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest withEvent ---D_View---");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"hitTest withEvent ---D_View--- %@",view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"pointInside withEvent ---D_view---");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"pointInside withEvent ---D_view--- %d",isInside);
    return isInside;
}

@end
