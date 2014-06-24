//
//  HexColorView.m
//  HexColorWatch
//
//  Created by Mika Yamamoto on 2014/06/24.
//  Copyright (c) 2014年 Mika Yamamoto. All rights reserved.
//

#import "HexColorView.h"
#import "UIColor+Hex.h"

@implementation HexColorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
        [self setNeedsDisplay];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 1.0, 0.5, 0.0, 1.0);
    
    CGContextFillPath(context);
}


@end
