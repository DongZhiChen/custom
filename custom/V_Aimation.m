//
//  V_Aimation.m
//  custom
//
//  Created by 陈东芝 on 16/8/2.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "V_Aimation.h"

@implementation V_Aimation


-(id)initWithFrame:(CGRect)frame{

    if(self = [super initWithFrame:frame]){
        
        self.backgroundColor = [UIColor redColor];
        [self createAnimation];
        
    }
    
    
    return self;
}


-(void)createAnimation{


    CABasicAnimation *base = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    base.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    base.fromValue = [NSNumber numberWithFloat:0];
    base.toValue = [NSNumber numberWithFloat:M_PI];
    
    [base setDuration:4];
    [base setRepeatCount:MAXFLOAT];
    [self.layer addAnimation:base forKey:@"animation"];
    
}

@end
