//
//  AppDelegate.h
//  TestScrolling
//
//  Created by Snow Leopard User on 20/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class CustomScrollView;
@class BorderView;
@interface AppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate> {

    UIScrollView *_scrollView;
    CustomScrollView *_nestedScrollView;
    BorderView *_borderView;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
