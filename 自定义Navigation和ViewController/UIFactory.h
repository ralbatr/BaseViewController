//
//  UIFactory.h
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyButton.h"
#import "MyLabel.h"

@interface UIFactory : NSObject

+ (MyButton *)creatButton:(NSString *)imageName highted:(NSString *)hightedName;
+ (MyButton *)creatButtonWithBackground:(NSString *)backgroundImageName backgroundHighted:(NSString *)backgroundHightName;
+ (MyLabel *)creatLabel:(UIColor *)colorName;

@end
