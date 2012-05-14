//
//  AppDelegate.m
//  TestScrolling
//
//  Created by Snow Leopard User on 20/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"
#import "CustomScrollView.h"
#import "BorderView.h"

#define LANDSCAPE_WIDTH 1024
#define LANDSCAPE_HEIGHT 728

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch
                             
    
    
    UIViewController *viewController = [[UIViewController alloc] initWithNibName:nil bundle:nil];
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 728, 1024)];
    _scrollView.pagingEnabled = YES;

   // _scrollView.canCancelContentTouches = NO;
   // _scrollView.delaysContentTouches=YES;
    
//    for (UIGestureRecognizer *gesture in _scrollView.gestureRecognizers) {
//        if ([gesture isKindOfClass:[UIPanGestureRecognizer class]]) {
//            UIPanGestureRecognizer *panGesture =(UIPanGestureRecognizer*) gesture;
//            panGesture.minimumNumberOfTouches = 2;
//            panGesture.maximumNumberOfTouches = 2;
//            
//            [panGesture addTarget:self action:@selector(handleSwipeFrom:)];
//        }
//    }
    
    
//    UISwipeGestureRecognizer *recognizer;
//    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//    recognizer.delaysTouchesBegan = TRUE;
//    recognizer.numberOfTouchesRequired=2;
// //   recognizer.numberOfTouches=2;
//    [_scrollView addGestureRecognizer:recognizer];
//    [recognizer release];
//    
//    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//    recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
// //   recognizer.numberOfTouches=2;
//    recognizer.numberOfTouchesRequired=2;
//    [_scrollView addGestureRecognizer:recognizer];
//    [recognizer release];
//    
//    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//    recognizer.direction = UISwipeGestureRecognizerDirectionUp;
//    //   recognizer.numberOfTouches=2;
//    recognizer.numberOfTouchesRequired=2;
//    [_scrollView addGestureRecognizer:recognizer];
//    [recognizer release];
//    
//    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
//    recognizer.direction = UISwipeGestureRecognizerDirectionDown;
//    //   recognizer.numberOfTouches=2;
//    recognizer.numberOfTouchesRequired=2;
//    [_scrollView addGestureRecognizer:recognizer];
//    [recognizer release];
//    
//    [_scrollView delaysContentTouches];

    
    viewController.view = _scrollView;
    _scrollView.backgroundColor = [UIColor redColor];
    [_scrollView setContentSize:
     CGSizeMake(3*LANDSCAPE_HEIGHT, 4*LANDSCAPE_WIDTH)];


    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, LANDSCAPE_HEIGHT, LANDSCAPE_WIDTH)];
    view2.backgroundColor = [UIColor whiteColor];
    

    _nestedScrollView= [[CustomScrollView alloc] initWithFrame:CGRectMake(60, 60, 400, 400)];
    _nestedScrollView.backgroundColor= [UIColor purpleColor];
    _nestedScrollView.contentSize = CGSizeMake(1600, 1600);
    _nestedScrollView.delegate = self;
    
    _nestedScrollView.layer.borderColor = [UIColor redColor].CGColor;
    _nestedScrollView.layer.borderWidth = 3.0f;
    //nestedScrollView.exclusiveTouch = YES;
   // nestedScrollView.delaysContentTouches=NO;
    //nestedScrollView.canCancelContentTouches=NO;
    
    [_nestedScrollView setMultipleTouchEnabled:NO];
//    _nestedScrollView.userInteractionEnabled = NO;
//    for (UIGestureRecognizer *gesture in _nestedScrollView.gestureRecognizers) {
//        if ([gesture isKindOfClass:[UIPanGestureRecognizer class]]) {
//            UIPanGestureRecognizer *panGesture =(UIPanGestureRecognizer*) gesture;
//            panGesture.minimumNumberOfTouches = 1;
//            panGesture.maximumNumberOfTouches = 1;
//            
//            [panGesture addTarget:self action:@selector(handleSwipeFrom2:)];
//        }
//    }
    //_scrollView.nestScroll = _nestedScrollView;
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(39, 30, 200, 100)];
    [button setTitle:@"test button" forState:UIControlStateNormal];
//    nestedScrollView.alwaysBounceVertical = NO;
//    nestedScrollView.alwaysBounceHorizontal = NO;
//    nestedScrollView.bounces = YES;
    [view2 addSubview:_nestedScrollView];
    [_nestedScrollView addSubview:button];
 //   [nestedview2 addSubview:nestedScrollView];
    
    [_scrollView addSubview:view2];
//    [view2 release];
    
    
    _borderView = [[BorderView alloc] initWithFrame:CGRectMake(400, 400, 600, 600)];
    [_scrollView addSubview:_borderView];
    
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];

    return YES;
}


-(void)handleSwipeFrom:(UIGestureRecognizer*)gesture 
{
    NSLog(@"parent swipe from %d ", gesture.numberOfTouches);
//    _nestedScrollView.scrollEnabled = NO;
//    if (gesture.numberOfTouches == 1) {
//        _nestedScrollView.userInteractionEnabled = YES;
//        [_nestedScrollView setExclusiveTouch:YES];
//        
//    }
//    if (gesture.numberOfTouches == 0) 
//        _nestedScrollView.userInteractionEnabled = NO;
}

-(void)handleSwipeFrom2:(UIGestureRecognizer*)gesture 
{
    NSLog(@"CHILD swipe from %d ", gesture.numberOfTouches);
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView 
{
    NSLog(@"scroll view begin dragging ");
        _scrollView.scrollEnabled=NO;
    _scrollView.directionalLockEnabled = YES;
//    _scrollView.alwaysBounceVertical = NO;
//    _scrollView.alwaysBounceHorizontal = NO;
//    _scrollView.bounces = NO;
    
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate 
{
    NSLog(@"scroll view end dragging decelerate %d", decelerate);
    _scrollView.scrollEnabled=YES;
    _scrollView.directionalLockEnabled = NO;
//    _scrollView.alwaysBounceVertical = YES;
//    _scrollView.alwaysBounceHorizontal = YES;
//    _scrollView.bounces = YES;
}
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{   // called on finger up as we are moving
 NSLog(@"scrollViewWillBeginDecelerating");
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{      // called when scroll view grinds to a halt
 NSLog(@"scrollViewDidEndDecelerating");

    
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
  NSLog(@"scrollViewDidEndScrollingAnimation");   
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"scroll content %f %f", scrollView.contentOffset.x,scrollView.contentOffset.y);
}



- (void)singleTapGestureCaptured:(UITapGestureRecognizer *)gesture
{ 
    NSLog(@"single tap gesture" );
   // [[self nextResponder] touchesBegan:touches withEvent:event] ;
    
    //CGPoint touchPoint=[gesture locationInView:scrollView];
}
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    
//   // [view3.view touchesBegan:touches withEvent:event];
//    
//    //[super touchesBegan:touches withEvent:event];
//    
//}
//
//-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
// //   [view3 touchesMoved:touches withEvent:event]; 
//}
//
//- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event 
//{	
//    NSLog(@"touches ended");
//    // If not dragging, send event to next responder
//    /// if (!self.dragging) 
// //   [view3 touchesEnded: touches withEvent:event]; 
//    // else
//    //    [super touchesEnded: touches withEvent: event];
//}
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
