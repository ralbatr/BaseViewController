//
//  MainViewController.m
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "BaseNavigationViewController.h"
#import "OtherViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self _initViewController];
    [self _initTabbarView];
}

//初始化字控制器
- (void)_initViewController
{
    HomeViewController *homeViewController = [[HomeViewController alloc] init];
    homeViewController.title = @"Home";
    OtherViewController *otherViewController = [[OtherViewController alloc] init];
    otherViewController.title = @"Other";
#warning 添加你需要的图片
    NSArray *viewController = @[homeViewController,otherViewController];
    NSMutableArray *viewControllers = [NSMutableArray arrayWithCapacity:viewController.count];
    
    for (UIViewController *viewContr in viewController) {
        BaseNavigationViewController *navigationViewController = [[BaseNavigationViewController alloc] initWithRootViewController:viewContr];
        [viewControllers addObject:navigationViewController];
    }
    self.viewControllers = viewControllers;
}
//自定义tabBar
- (void)_initTabbarView
{
    _tabbarView = [[UIView alloc] init];
    _tabbarView.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 69, 320, 49);
    [self.view addSubview:_tabbarView];
#warning 修改此处为你的图片
    NSArray *background = @[@"tabbar_home.png",@"tabbar_more.png"];
    NSArray *heightBackground = @[@"tabbar_home_highlighted.png",@"tabbar_more_highlighted.png"];
    
    for (int i = 0; i < background.count; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake((320/(background.count)-30)/2+(320/(background.count)*i), (69-30)/2, 30, 30);
        button.tag = i;
        [button setImage:[UIImage imageNamed:background[i]] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:heightBackground[i]] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(selectTab:) forControlEvents:UIControlEventTouchUpInside];
        [_tabbarView addSubview:button];
    }
}

- (void)selectTab:(UIButton *)button
{
    self.selectedIndex = button.tag;
}

//隐藏Tabbar
//- (void)viewWillAppear:(BOOL)animated
//{
//    self.tabBar.hidden = YES;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
