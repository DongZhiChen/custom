//
//  ViewController.h
//  custom
//
//  Created by 陈东芝 on 16/7/31.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+ChangeColor.h"

#import "V_Aimation.h"
#import "UIImageView+Animation.h"
#import "ViewController2.h"
#import "VCAnimation.h"
@interface ViewController : UIViewController <UIViewControllerTransitioningDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *IV;
- (IBAction)BTN:(id)sender;

@end

