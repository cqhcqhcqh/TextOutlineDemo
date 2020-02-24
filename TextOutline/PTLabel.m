//
//  PTLable.m
//  TextOutline
//
//  Created by Chris on 2018/10/30.
//  Copyright © 2018 Chris. All rights reserved.
//

#import "PTLabel.h"

@implementation PTLabel

- (void)drawTextInRect:(CGRect)rect
{
    if (self.strokeWidth > 0) {
        CGSize shadowOffset = self.shadowOffset;
        UIColor *textColor = self.textColor;
        
        CGContextRef c = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(c, self.strokeWidth);
        CGContextSetLineJoin(c, kCGLineJoinRound);
        //画外边
        CGContextSetTextDrawingMode(c, kCGTextFillStrokeClip);
        self.textColor = self.strokeColor;
        [super drawTextInRect:rect];
        //画内文字
        CGContextSetTextDrawingMode(c, kCGTextFill);
        self.textColor = textColor;
        self.shadowOffset = CGSizeMake(0, 0);
        [super drawTextInRect:rect];
        self.shadowOffset = shadowOffset;
    } else {
        [super drawTextInRect:rect];
    }
}

@end
