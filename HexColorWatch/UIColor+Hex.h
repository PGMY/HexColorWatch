//
//  UIColor+Hex.h
//  HexColorWatch
//
//  Created by Mika Yamamoto on 2014/06/24.
//  Copyright (c) 2014年 Mika Yamamoto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)
+ (UIColor *)colorWithHex:(uint32_t)hex;
+ (UIColor*)colorWithHexString:(NSString*)string;
@end
