//
//  HitButton.h
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/25.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HitTestProtocol.h"

@interface HitButton : UIButton<HitTestProtocol>

@property (nonatomic) IBInspectable CGFloat minimumHitTestWidth;
@property (nonatomic) IBInspectable CGFloat minimumHitTestHeight;

@end
