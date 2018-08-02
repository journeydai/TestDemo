//
//  ViewController.m
//  UINavigationController
//
//  Created by journey on 2018/7/5.
//  Copyright © 2018 journey. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController () {
    FirstViewController *firstVC;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Main0";
    self.view.backgroundColor = UIColor.grayColor;
//    self.navigationItem.title = @"Main";
    self.navigationItem.titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 200, 44)];
//    self.navigationItem.titleView.backgroundColor = UIColor.redColor;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 44)];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
//    [self.navigationItem.titleView addSubview:btn];
//    self.navigationController.navigationBar.barTintColor = UIColor.redColor;
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(78, 0, 44, 44)];
    imageview.image = [UIImage imageNamed:@"0.jpg"];
//    imageview.backgroundColor = UIColor.greenColor;
    imageview.layer.cornerRadius = 22;
    imageview.layer.masksToBounds = true;
//    imageview.layer.borderWidth = 2.0;
//    imageview.layer.borderColor = UIColor.redColor.CGColor;

    [self.navigationItem.titleView addSubview:imageview];
}

- (void)buttonAction {
//    NSLog(@"Click");
    if (!firstVC) {
        firstVC = [FirstViewController new];
        firstVC.VC = self;
    }
    [self.navigationController pushViewController:firstVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
