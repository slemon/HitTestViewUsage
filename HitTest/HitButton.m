//
//  HitButton.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/25.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "HitButton.h"
#import "HitTestTool.h"
@implementation HitButton

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event {
    return CGRectContainsPoint(HitTestingBounds(self.bounds, self.minimumHitTestWidth, self.minimumHitTestHeight), point);
}

@end
