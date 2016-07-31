//
//  UIColor+ChangeColor.h
//  custom
//
//  Created by 陈东芝 on 16/7/31.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ChangeColor)

/**
 *  UIColor 转 RGB
 *
 *  @param color
 *
 *  @return
 */
+(NSArray *)colorChnageColorToRGB:(UIColor *)color;


/**
 *  16进制转RGB
 *
 *  @param hexColor
 *
 *  @return
 */
+ (UIColor*) colorWithHex:(long)hexColor;
+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;
+(UIColor *) hexStringToColor: (NSString *) stringToConvert;



@end
