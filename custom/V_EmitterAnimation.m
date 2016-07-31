//
//  V_EmitterAnimation.m
//  custom
//
//  Created by 陈东芝 on 16/7/31.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "V_EmitterAnimation.h"

@implementation V_EmitterAnimation

-(id)initWithFrame:(CGRect)frame{

    if(self = [super initWithFrame:frame]){
    
        self.layer.masksToBounds = YES;
        [self configEmitterLayer];
    }
    
    return self;
}


+ (Class) layerClass {
    
    return [CAEmitterLayer class];
    
}

// [emitterLayer setValue:[NSNumber numberWithInt:isEmitting?50:0] forKeyPath:@"emitterCells.emitterCell.birthRate"];

- (void)configEmitterLayer {
    
 CAEmitterLayer *emitterLayer = (CAEmitterLayer  *)self.layer;
    // 生成粒子的位置
 emitterLayer.emitterPosition = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2.0);
 emitterLayer.emitterSize     = self.bounds.size;
 emitterLayer.emitterMode     = kCAEmitterLayerVolume;
 emitterLayer.renderMode      = kCAEmitterLayerAdditive;
 emitterLayer.emitterShape    = kCAEmitterLayerCircle;
 emitterLayer.emitterCells    = [NSArray arrayWithObject:[self createEmitterCell]];

}


- (CAEmitterCell *)createEmitterCell {// 创建粒子单元
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.birthRate      = 5;// 每秒生成例子频率
    emitterCell.lifetime       = 5;// 粒子系统的生命周期
    emitterCell.velocity       = 70;// 粒子速度
    emitterCell.emissionRange  = 2* M_PI;// 周围发射角度
    emitterCell.contents       = (id)[[UIImage imageNamed:@"Snow"] CGImage];// 粒子显示内容
    emitterCell.color          = [[UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:0.1] CGColor];// 粒子颜色
    emitterCell.alphaRange     = 0.5;
    emitterCell .name = @"emitterCell";
    return emitterCell;

}
@end
