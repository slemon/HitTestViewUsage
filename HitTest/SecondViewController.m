//
//  SecondViewController.m
//  HitTestViewDemo
//
//  Created by Slemon on 15/11/25.
//  Copyright © 2015年 Lemons. All rights reserved.
//

#import "SecondViewController.h"
#import "UIButton+HitAreaExpand.h"

@interface SecondViewController ()

- (IBAction)buttonAction:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 20, 20);
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(testButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button.minHitTestWidth = 80;
    button.minHitTestHeight = 80;
}

- (void)testButtonAction:(UIButton *)button {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonAction:(id)sender {
    NSLog(@"button has been pressed!!!!");
}
@end
