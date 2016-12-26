//
//  ViewController.m
//  PAYSDKDemo
//
//  Created by 李聪聪 on 16/11/20.
//  Copyright © 2016年 李聪聪. All rights reserved.
//

#import "ViewController.h"
#import <CY_PAYSDK/CY_PayManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    [btn setCenter:self.view.center];
    [btn setBackgroundColor:[UIColor yellowColor]];
    [btn setTitle:@"pay" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(PayBtnClick)  forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getInfo:) name:@"PAY_RESULT" object:nil];
}

- (void)PayBtnClick{
    CY_PayManager* manager = [CY_PayManager defaultManager];
    manager.Appid = @"";
    manager.AppSecret = @"";
    manager.OrderAtm = @"1";
    manager.AppPayProductId = @"";
    [manager Pay];
    
    
}

- (void)getInfo:(NSNotification*)notifi{
    NSLog(@"%@",notifi.userInfo);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
