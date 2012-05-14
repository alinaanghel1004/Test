//
//  CustomScrollView.h
//  TestScrolling
//
//  Created by Snow Leopard User on 20/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomScrollView : UIScrollView
{
    NSInteger _fingerPressed;
    UIScrollView *_nestScroll;
}
@property (nonatomic, assign) NSInteger fingerPressed;
@property (nonatomic, retain) UIScrollView *nestScroll;
@end
