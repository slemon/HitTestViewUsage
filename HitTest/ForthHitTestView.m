//
//  ForthHitTestView.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/29.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "ForthHitTestView.h"

static const NSInteger PosterW = 150;

@interface ForthHitTestView ()<UIScrollViewDelegate>

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong)  NSMutableArray *posterArray;

@property (nonatomic, assign)  NSInteger centerIndex;


@end

@implementation ForthHitTestView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
    }
    return self;
}

- (void) awakeFromNib
{
    [super awakeFromNib];
    
    _posterArray = NSMutableArray.new;
    
    NSInteger posterCount = 10;
    CGFloat posterGap = 0;
    for (int i = 0; i < posterCount; i ++) {
        UIImageView * posterImageView = [[UIImageView alloc] init];
        posterImageView.frame = CGRectMake(i * (PosterW + posterGap), 0, PosterW, CGRectGetHeight(self.scrollView.frame));
        posterImageView.image = [UIImage imageNamed:@"The_Martian"];
        posterImageView.tag = 1000 + i;
        [self.scrollView addSubview:posterImageView];
        [_posterArray addObject:posterImageView];
    }
    self.scrollView.contentSize = CGSizeMake(posterCount * PosterW +(posterCount - 1) * posterGap, CGRectGetHeight(self.scrollView.frame));
    self.scrollView.pagingEnabled = YES;
    self.scrollView.clipsToBounds = NO;
    self.scrollView.delegate = self;
    
    _centerIndex = 0;
    UIImageView * centerPoster = _posterArray[_centerIndex];
    centerPoster.transform = CGAffineTransformMakeScale(1.3, 1.3);
    [self.scrollView bringSubviewToFront:centerPoster];

}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    NSInteger contentOffsetX = scrollView.contentOffset.x;
    
    NSLog(@"---------%ld , -----%ld",contentOffsetX % PosterW ,contentOffsetX/PosterW);
    
    NSInteger OffsetX = contentOffsetX % PosterW;
    
    
    _centerIndex = contentOffsetX/150;
    
    NSLog(@"_centerIndex %ld",_centerIndex);
    
    //中间永远是变小的
    UIImageView * centerPoster = _posterArray[_centerIndex];
    CGFloat factor = 1 + ((PosterW - OffsetX) /150.0)*0.3;
    centerPoster.transform = CGAffineTransformMakeScale(factor, factor);
    NSLog(@"centerPoster %ld",centerPoster.tag);
    [self.scrollView bringSubviewToFront:centerPoster];

    if (_centerIndex - 1 > 0 && _centerIndex - 1 < [_posterArray count]) {
        
        UIImageView * leftPoster = _posterArray[_centerIndex - 1];
        
        NSLog(@"leftPoster %ld",leftPoster.tag);

    }
    
    if (_centerIndex + 1 < [_posterArray count]) {

        UIImageView * rightPoster = _posterArray[_centerIndex + 1];
        
        NSLog(@"rightPoster %ld",rightPoster.tag);
        
        CGFloat factor = 1 + (OffsetX /150.0)*0.3;
        rightPoster.transform = CGAffineTransformMakeScale(factor, factor);

    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    UIView *hitTestView = [super hitTest:point withEvent:event];
    if (hitTestView) {
        hitTestView = self.scrollView;
    }
    return hitTestView;
}

@end
