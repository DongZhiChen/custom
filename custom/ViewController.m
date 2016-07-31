//
//  ViewController.m
//  custom
//
//  Created by 陈东芝 on 16/7/31.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imgvew = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imgvew.image = [UIImage imageNamed:@"1468394042557.jpg"];
    [self.view addSubview:imgvew];
    
    CAGradientLayer  *layer = [CAGradientLayer layer];
    /**
     *  layer透明度
     */
    layer.opacity = 0.5;
    layer.frame = self.view.bounds;
    layer.colors = @[(id)[UIColor redColor].CGColor,(id)[UIColor greenColor].CGColor,(id)[UIColor blueColor].CGColor];
    layer.locations = @[@0.2,@0.5,@.8];
    layer.startPoint = CGPointMake(0, 0);
    layer.endPoint = CGPointMake(1,1);
    [imgvew.layer addSublayer:layer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
