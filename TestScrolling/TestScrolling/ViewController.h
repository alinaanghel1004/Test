//
//  ViewController.h
//  TestScrolling
//
//  Created by Snow Leopard User on 20/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
    UITableView *_tableView;
    NSArray *_array;
}
@property (nonatomic, retain) IBOutlet UITableView *tableView;

@end
