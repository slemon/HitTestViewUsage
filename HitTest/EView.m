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
    NSLog(@"进入E_View---hitTest withEvent ---");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"离开E_View---hitTest withEvent ---hitTestView:%@",view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"E_view---pointInside withEvent ---");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"E_view---pointInside withEvent --- isInside:%d",isInside);
    return isInside;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"E_touchesBegan");
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"E_touchesMoved");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"E_touchesEnded");
}


@end
