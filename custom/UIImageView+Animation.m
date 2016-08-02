//
//  UIImageView+Animation.m
//  custom
//
//  Created by 陈东芝 on 16/8/2.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "UIImageView+Animation.h"

@implementation UIImageView (Animation)

-(void)imageViewAddAnimationRotationZ{

    CABasicAnimation *base = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    base.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    base.fromValue = [NSNumber numberWithFloat:0];
    base.toValue = [NSNumber numberWithFloat:M_PI*2];
    
    [base setDuration:3.2];
    [base setRepeatCount:MAXFLOAT];
    [self.layer addAnimation:base forKey:@"animation"];
    
}

-(void)imageViewAddAnimationTransform{
    
    CABasicAnimation *base = [CABasicAnimation animationWithKeyPath:@"transform"];
    
    base.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    base.fromValue =[NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(0)];
    base.toValue =[NSValue valueWithCGAffineTransform:CGAffineTransformMakeRotation(2*M_PI)];
    
    [base setDuration:3.2];
    [base setRepeatCount:MAXFLOAT];
    [self.layer addAnimation:base forKey:@"animation"];
    
}



@end
