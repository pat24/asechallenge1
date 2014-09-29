//
//  ToDoListTableViewController.h
//  ToDoList
//
//  Created by Prudhvi's on 6/6/14.
//  Copyright (c) 2014 Prudhvi Nalluri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListTableViewController : UITableViewController
- (IBAction)unwindToList:(UIStoryboardSegue *)segue;
@property NSMutableArray *toDoItems;

@end
