//
//  secondViewController.m
//  POPping
//
//  Created by chuck on 15-6-9.
//  Copyright (c) 2015年 ZK. All rights reserved.
//

#import "secondViewController.h"
#import "animationObjcet.h"

@interface secondViewController () <UINavigationControllerDelegate>
@property(nonatomic,strong)animationObjcet * animaObj;
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view.
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 84, 50, 50)];
    btn.layer.cornerRadius = 25.0;
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:(UIControlEventTouchUpInside)];
    _btn = btn;
    [self.view addSubview:btn];
    
    UIImageView * image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width, 200)];
    image.image = [UIImage imageNamed:@"y1.jpg"];
    [self.view addSubview:image];
    _animaObj = [[animationObjcet alloc] init];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.delegate = nil;
}

- (void)clickBtn{
    [self.navigationController popViewControllerAnimated:YES];
}
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
{
    return self.animaObj;
}



@end
