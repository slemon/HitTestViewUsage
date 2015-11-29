//
//  HitTestTool.h
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/29.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface HitTestTool : NSObject

CGRect HitTestingBounds(CGRect bounds, CGFloat minimumHitTestWidth, CGFloat minimumHitTestHeight);

@end
