//
//  UIColor+ChangeColor.m
//  custom
//
//  Created by 陈东芝 on 16/7/31.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import "UIColor+ChangeColor.h"

@implementation UIColor (ChangeColor)

#pragma mark - UIColor转RGB -

+(NSArray *)colorChnageColorToRGB:(UIColor *)color{
    
    NSMutableArray *ArrRGBStrValue = [[NSMutableArray alloc] init];
    
    //获得RGB值描述
    NSString *RGBValue = [NSString stringWithFormat:@"%@",color];
  
    //将RGB值描述分隔成字符串
    NSArray *RGBArr = [RGBValue componentsSeparatedByString:@" "];
    
    //获取红色值
    int red = [[RGBArr objectAtIndex:1] floatValue] * 255;
    [ArrRGBStrValue addObject:[NSNumber numberWithInt:red]];
    
    //获取绿色值
    int green = [[RGBArr objectAtIndex:2]  floatValue] * 255;
    [ArrRGBStrValue addObject:[NSNumber numberWithInt:green]];
    
    //获取蓝色值
    int blue = [[RGBArr objectAtIndex:3] floatValue] * 255;
    [ArrRGBStrValue addObject:[NSNumber numberWithInt:blue]];
    
    //返回保存RGB值的数组
    return ArrRGBStrValue;
    
}


#pragma mark - 16进制转RGB -

+ (UIColor*) colorWithHex:(long)hexColor{
    
    return [UIColor colorWithHex:hexColor alpha:1.];
}



+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity{
    
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}


+(UIColor *) hexStringToColor: (NSString *) stringToConvert{
    
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    
    if ([cString length] < 6) return [UIColor blackColor];
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}



#pragma mark -
@end
