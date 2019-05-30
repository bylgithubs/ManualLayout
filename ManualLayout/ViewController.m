//
//  ViewController.m
//  ManualLayout
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SuperView *sView = [[SuperView alloc] init];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [sView createSubViews];

    sView.backgroundColor = [UIColor blueColor];
    

    [self.view addSubview:sView];
    
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(240, 480, 80, 40);
    
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn1.frame = CGRectMake(240, 520, 80, 40);
    
    [btn1 setTitle:@"缩小" forState:UIControlStateNormal];
    
    [btn1 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn1];
    
    sView.tag = 101;
    
}
//放大父视图
- (void)pressLarge{
    SuperView *sView = (SuperView *)[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 300, 480);
    
    [UIView commitAnimations];
    
}
//缩小父视图
- (void)pressSmall{
    SuperView *sView = (SuperView *)[self.view viewWithTag:101];
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    sView.frame = CGRectMake(20, 20, 180, 280);
    
    [UIView commitAnimations];}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
