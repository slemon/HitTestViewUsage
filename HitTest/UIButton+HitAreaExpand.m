//
//  UIButton+HitAreaExpand.m
//  HitTestViewDemo
//
//  Created by DalongSun on 15/12/8.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "UIButton+HitAreaExpand.h"
#import "HitTestTool.h"
#import <objc/runtime.h>

@implementation UIButton (HitAreaExpand)
//@dynamic minHitTestWidth;
//@dynamic minHitTestHeight;

- (CGFloat)minHitTestWidth {
    NSNumber * width = objc_getAssociatedObject(self, @selector(minHitTestWidth));
    return [width floatValue];
}

- (void)setMinHitTestWidth:(CGFloat)minHitTestWidth {
    objc_setAssociatedObject(self, @selector(minHitTestWidth), [NSNumber numberWithFloat:minHitTestWidth], OBJC_ASSOCIATION_ASSIGN);
}

- (CGFloat)minHitTestHeight {
    NSNumber * height = objc_getAssociatedObject(self, @selector(minHitTestHeight));
    return [height floatValue];
}

- (void)setMinHitTestHeight:(CGFloat)minHitTestHeight {
    objc_setAssociatedObject(self, @selector(minHitTestHeight), [NSNumber numberWithFloat:minHitTestHeight], OBJC_ASSOCIATION_ASSIGN);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    
    return CGRectContainsPoint(HitTestingBounds(self.bounds, self.minHitTestWidth, self.minHitTestHeight), point);
}

//CGRect HitTestingBounds(CGRect bounds, CGFloat minimumHitTestWidth, CGFloat minimumHitTestHeight) {
//    
//    CGRect hitTestingBounds = bounds;
//    if (minimumHitTestWidth > bounds.size.width) {
//        hitTestingBounds.size.width = minimumHitTestWidth;
//        hitTestingBounds.origin.x -= (hitTestingBounds.size.width - bounds.size.width)/2;
//    }
//    if (minimumHitTestHeight > bounds.size.height) {
//        hitTestingBounds.size.height = minimumHitTestHeight;
//        hitTestingBounds.origin.y -= (hitTestingBounds.size.height - bounds.size.height)/2;
//    }
//    return hitTestingBounds;
//}

@end
