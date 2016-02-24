//
//  HitTestTool.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/29.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "HitTestTool.h"

@implementation HitTestTool

CGRect HitTestingBounds(CGRect bounds, CGFloat minimumHitTestWidth, CGFloat minimumHitTestHeight) {
    
    CGRect hitTestingBounds = bounds;
    
    if (minimumHitTestWidth > bounds.size.width) {
        hitTestingBounds.size.width = minimumHitTestWidth;
        hitTestingBounds.origin.x -= (hitTestingBounds.size.width - bounds.size.width)/2;
    }
    
    if (minimumHitTestHeight > bounds.size.height) {
        hitTestingBounds.size.height = minimumHitTestHeight;
        hitTestingBounds.origin.y -= (hitTestingBounds.size.height - bounds.size.height)/2;
    }
    
    return hitTestingBounds;
}



@end
