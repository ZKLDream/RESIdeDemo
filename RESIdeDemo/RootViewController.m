//
//  RootViewController.m
//  RESIdeDemo
//
//  Created by 千锋 on 16/3/25.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)awakeFromNib{
    UIViewController *contentVC=[self.storyboard instantiateViewControllerWithIdentifier:@"TabbarController"];
    self.contentViewController=contentVC;
    
    UIViewController *leftVC=[self.storyboard instantiateViewControllerWithIdentifier:@"LeftSideViewController"];
    self.leftMenuViewController=leftVC;
    
    UIViewController *rightVC=[self.storyboard instantiateViewControllerWithIdentifier:@"RightViewController"];
    self.rightMenuViewController=rightVC;
    
    //配置residemenu
    //是否允许手势
    self.panGestureEnabled=YES;
    
    //动画时间
    self.animationDuration=1;
    
    //设置背景图
    self.backgroundImage=[UIImage imageNamed:@"001.jpg"];
    
    //是否允许缩放contentView
    self.scaleContentView=YES;
    //设置contentView缩放比例
    self.contentViewScaleValue=0.9;
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
