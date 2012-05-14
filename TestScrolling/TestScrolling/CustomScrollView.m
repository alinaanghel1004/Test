//
//  CustomScrollView.m
//  TestScrolling
//
//  Created by Snow Leopard User on 20/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomScrollView.h"

@implementation CustomScrollView

@synthesize fingerPressed = _fingerPressed;
@synthesize nestScroll = _nestScroll;

-(void)gestures {

}
- (id)initWithFrame:(CGRect)frame 
{
//    for (UIGestureRecognizer *gesture in self.gestureRecognizers) {
//        if ([gesture isKindOfClass:[UIPanGestureRecognizer class]]) {
//            UIPanGestureRecognizer *panGesture =(UIPanGestureRecognizer*) gesture;
//            panGesture.minimumNumberOfTouches = 2;
//            panGesture.maximumNumberOfTouches = 2;
//            
//            [panGesture addTarget:self action:@selector(swipe:)];
//        }
//    }
    
    return [super initWithFrame:frame];
}
-(void)swipe:(UIGestureRecognizer*)gesture
{
    NSLog(@"getsure %d ", gesture.numberOfTouches);
    

}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
//          [self.nextResponder touchesBegan:touches withEvent:event];

    NSLog(@"touched began %d", [[event allTouches] count]);
    
    if (2== [[event allTouches] count]) 
    {
     //   _nestScroll.userInteractionEnabled = YES;
     //   self.scrollEnabled = NO;
     //   self.userInteractionEnabled = NO;
        
        NSLog(@"disable parent scroll next responder %@", self.nextResponder );
        [self.nextResponder touchesBegan:touches withEvent:event];    [super touchesBegan:touches withEvent:event];
        
    }
    //[super touchesBegan:touches withEvent:event];
    
}
//
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches moved event %d", [[event allTouches] count]);
    _fingerPressed = [[event allTouches] count];
    
    if (2== [[event allTouches] count]) 
    {
       // _nestScroll.userInteractionEnabled = YES;
       // self.scrollEnabled = NO;
       // self.userInteractionEnabled = NO;
                NSLog(@"disable parent scroll next responder %@", self.nextResponder.nextResponder );
        
        [self.nextResponder touchesBegan:touches withEvent:event];    [super touchesBegan:touches withEvent:event];
        
    }
    
     //        [self.nextResponder touchesMoved:touches withEvent:event]; 
}

//- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event 
//{	
//    // If not dragging, send event to next responder
//   if (!self.dragging) 
//        [self.nextResponder touchesEnded: touches withEvent:event]; 
//    else
//       [super touchesEnded: touches withEvent: event];
//}

//-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    
//    return nil;
//}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//  
//    NSLog(@"point %f %f Childs %d Event %@ Count %d", point.x, point.y, [self.subviews count], event, [[event allTouches] count]);
//    
//    UIView *result = self;
////    for (UIView *child in self.subviews)
////    {
////        CGPoint pointTest = CGPointMake(point.x-146, point.y);
////        
////        UIView *responds =     [child hitTest:pointTest withEvent:nil];
////        UIView *superView2 = responds.superview;
////        while (superView2.superview && superView2.superview!=self) {
////            superView2 = superView2.superview;
////        }
////        
////        return  superView2;
////        
////        NSLog(@"Child coordonates %f %f %f %f",
////              child.frame.origin.x, child.frame.origin.y, 
////              child.frame.size.width, child.frame.size.height);
////        
////        if (point.x > child.frame.origin.x && point.x < child.frame.origin.x+child.frame.size.width 
////            && point.x > child.frame.origin.y && point.y < child.frame.origin.y+child.frame.size.height) {
////            NSLog(@"inside child");
////            
////            [child hitTest:CGPointMake(10, 10) withEvent:nil];
////            
////            return child;
////        }
////                                                                                                
////    }
////        if ([child pointInside:point withEvent:nil])
////            if ((result = [child hitTest:point withEvent:nil]) != nil)
////                break;
//    
//    return result;
//
//}

@end
