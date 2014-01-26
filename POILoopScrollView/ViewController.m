//
//  ViewController.m
//  POILoopScrollView
//
//  Created by Poison on 14-1-26.
//  Copyright (c) 2014年 Poison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 滑动
    POILoopScrollView *loopScrollview = [[POILoopScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [loopScrollview setBackgroundColor:[UIColor clearColor]];
    [loopScrollview setAnimated:YES];
    [loopScrollview setLoopScrollViewDelegate:self];
    [self.view addSubview:loopScrollview];
    
    // 无限滚动的View的数据加在
    UIImageView *bannerImage = [[UIImageView alloc] initWithFrame:loopScrollview.bounds];
    [bannerImage setImage:[UIImage imageNamed:@"1.jpg"]];
    [bannerImage setContentMode:UIViewContentModeScaleAspectFit];
    [loopScrollview addFirstLoopView:bannerImage];
    
    bannerImage = [[UIImageView alloc] initWithFrame:loopScrollview.bounds];
    [bannerImage setContentMode:UIViewContentModeScaleAspectFit];
    [bannerImage setImage:[UIImage imageNamed:@"1.jpg"]];
    [loopScrollview addLoopViewsWithView:bannerImage];
    
    bannerImage = [[UIImageView alloc] initWithFrame:loopScrollview.bounds];
    [bannerImage setContentMode:UIViewContentModeScaleAspectFit];
    [bannerImage setImage:[UIImage imageNamed:@"2.jpg"]];
    [loopScrollview addLoopViewsWithView:bannerImage];
    
    bannerImage = [[UIImageView alloc] initWithFrame:loopScrollview.bounds];
    [bannerImage setContentMode:UIViewContentModeScaleAspectFit];
    [bannerImage setImage:[UIImage imageNamed:@"3.jpg"]];
    [loopScrollview addLoopViewsWithView:bannerImage];
    
    bannerImage = [[UIImageView alloc] initWithFrame:loopScrollview.bounds];
    [bannerImage setContentMode:UIViewContentModeScaleAspectFit];
    [bannerImage setImage:[UIImage imageNamed:@"4.jpg"]];
    [loopScrollview addLoopViewsWithView:bannerImage];
    
    bannerImage = [[UIImageView alloc] initWithFrame:loopScrollview.bounds];
    [bannerImage setContentMode:UIViewContentModeScaleAspectFit];
    [bannerImage setImage:[UIImage imageNamed:@"4.jpg"]];
    [loopScrollview addLastLoopView:bannerImage];
    
    [loopScrollview reloadData];
}

@end
