//
//  VCAnimation.m
//  custom
//
//  Created by 陈东芝 on 16/8/2.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "VCAnimation.h"

@implementation VCAnimation


-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1.0f;
}



//动画内容
-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
    //和上边类似
    UIView * view = [transitionContext containerView];
    
    UIView * fromeView = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey].view;
    
    UIView * toView = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey].view;
    
    //这里模仿的是滑动切换的效果
    //先让将要出现的view走出一个屏幕
    //然后把他俩都加到舞台上
    toView.transform = CGAffineTransformMakeTranslation(320, 0);
    toView.layer.transform = CATransform3DMakeRotation(0.78,0, 1, 0);
    [view addSubview:fromeView];
    [view addSubview:toView];
    
//    //开始动画
//    [UIView animateWithDuration:1.0f animations:^{
//        //让将要出现的view的最终位置就是屏幕的位置
//        //另一个view从左边退出
//        
//        toView.transform = CGAffineTransformMakeTranslation(0, 0);
//        fromeView.transform = CGAffineTransformMakeTranslation(-375, 0);
//        
//    } completion:^(BOOL finished) {
//        //重置fromeView
        //自己remove的话,系统就会remove
        fromeView.transform = CGAffineTransformIdentity;
        
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
  //  }];
    
}



@end
