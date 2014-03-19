//
//  UIFactory.m
//  自定义Navigation和ViewController
//
//  Created by Ralbatr on 14-3-18.
//  Copyright (c) 2014年 Ralbatr. All rights reserved.
//

#import "UIFactory.h"


@implementation UIFactory

+ (MyButton *)creatButton:(NSString *)imageName highted:(NSString *)hightedName
{
    MyButton *button = [[MyButton alloc] initWithImage:imageName highlightedImage:hightedName];
    return button;
}

+ (MyButton *)creatButtonWithBackground:(NSString *)backgroundImageName backgroundHighted:(NSString *)backgroundHightName
{
    MyButton *button = [[MyButton alloc] initWithBackground:backgroundImageName backgroundHightImageName:backgroundHightName];
    return button;
}

+ (MyLabel *)creatLabel:(UIColor *)colorName
{
    MyLabel *label = [[MyLabel alloc] initWithColorName:colorName];
    return label;
}

@end
