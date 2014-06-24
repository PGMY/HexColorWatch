//
//  UIColor+Hex.m
//  HexColorWatch
//
//  Created by Mika Yamamoto on 2014/06/24.
//  Copyright (c) 2014年 Mika Yamamoto. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
+ (UIColor*)colorWithHex:(uint32_t)hex {
    CGFloat red = ((hex & 0xff000000) >> 24) / 255.0f;
    CGFloat green = ((hex & 0x00ff0000) >> 16) / 255.0f;
    CGFloat blue = ((hex & 0x0000ff00) >> 8) / 255.0f;
    CGFloat alpha = (hex & 0x000000ff) / 255.0f;
    
    NSLog(@"R:%f, G:%f, B:%f, A:%f",red,green,blue,alpha);
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor*)colorWithHexString:(NSString*)string {
    uint32_t hex = 0x0;
    NSScanner* scanner = [NSScanner scannerWithString:string];
    [scanner scanHexInt:&hex];
    
    return [UIColor colorWithHex:hex];
}

@end
