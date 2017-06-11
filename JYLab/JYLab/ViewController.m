//
//  ViewController.m
//  JYLab
//
//  Created by 李佳育 on 2017/5/6.
//  Copyright © 2017年 JY. All rights reserved.
//

#import "ViewController.h"
#import "JYActionSheet.h"

@interface ViewController ()
@property (nonatomic, strong) JYActionSheet * sheet;
@end

@implementation ViewController

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelBtn.frame = CGRectMake(0, 200, 200, 44);
    cancelBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    cancelBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [cancelBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [cancelBtn addTarget:self action:@selector(showAction) forControlEvents:UIControlEventTouchUpInside];
    [cancelBtn setTitle:@"点击" forState:UIControlStateNormal];
    [self.view addSubview:cancelBtn];

    
    
    // Do any additional setup after loading the view, typically from a nib.
    }

- (void)showAction {
    
    NSArray *array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10"];
    self.sheet = [JYActionSheet actionSheetWithTip:@"title" cancel:@"取消" options:array selectedIndex:^(NSInteger index) {
        NSLog(@"%zd",index);
    }];
    [self.view addSubview:self.sheet];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
