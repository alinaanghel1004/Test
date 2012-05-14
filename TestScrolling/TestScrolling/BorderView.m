//
//  BorderView.m
//  TestScrolling
//
//  Created by Snow Leopard User on 16/04/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BorderView.h"
#import <QuartzCore/QuartzCore.h>

@implementation BorderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.layer.borderColor = [UIColor yellowColor].CGColor;
        self.layer.borderWidth = 3.0f;
        self.backgroundColor = [UIColor magentaColor];
              self.backgroundColor = [UIColor magentaColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/


//- (void)drawRect:(CGRect)rect
//{
//    //draw the bottom border
//    float borderSize = 1.0f;
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
//    CGContextFillRect(context, CGRectMake(0.0f, 0.0f, self.frame.size.width, self.frame.size.height));
//}



@end
