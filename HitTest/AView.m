//
//  AView.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/24.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "AView.h"

@implementation AView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"进入A_View---hitTest withEvent ---");
    UIView * view = [super hitTest:point withEvent:event];
    NSLog(@"离开A_View--- hitTest withEvent ---hitTestView:%@",view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    NSLog(@"A_view--- pointInside withEvent ---");
    BOOL isInside = [super pointInside:point withEvent:event];
    NSLog(@"A_view--- pointInside withEvent --- isInside:%d",isInside);
    return isInside;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"A_touchesBegan");
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"A_touchesMoved");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    NSLog(@"A_touchesEnded");
}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    if (!self.isUserInteractionEnabled || self.isHidden || self.alpha <= 0.01) {
//        return nil;
//    }
//    if ([self pointInside:point withEvent:event]) {
//        for (UIView *subview in [self.subviews reverseObjectEnumerator]) {
//            CGPoint convertedPoint = [subview convertPoint:point fromView:self];
//            UIView *hitTestView = [subview hitTest:convertedPoint withEvent:event];
//            if (hitTestView) {
//                return hitTestView;
//            }
//        }
//        return self;
//    }
//    return nil;
//}


@end
