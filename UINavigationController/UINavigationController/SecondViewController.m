//
//  SecondViewController.m
//  UINavigationController
//
//  Created by journey on 2018/7/5.
//  Copyright © 2018 journey. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Main2";
    self.view.backgroundColor = UIColor.greenColor;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 100, 44)];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}

- (void)buttonAction {
//    [self.navigationController popViewControllerAnimated:YES];
    if (self.VC) {
        [self.navigationController popToViewController:self.VC animated:YES];
    }
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

@end
