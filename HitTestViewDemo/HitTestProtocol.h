//
//  HitTestProtocol.h
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/29.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HitTestProtocol <NSObject>

@required

@property (nonatomic) IBInspectable CGFloat minimumHitTestWidth;
@property (nonatomic) IBInspectable CGFloat minimumHitTestHeight;

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event;

@end
