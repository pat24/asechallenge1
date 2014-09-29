//
//  GroceryListTableViewController.h
//  Facebook Login
//
//  Created by Prudhvi's on 9/27/14.
//
//

#import <UIKit/UIKit.h>
#import "Item.h"
#import "DetailVC.h"
#import "Cartitem.h"


@interface GroceryListTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
- (IBAction)AddtoCart:(id)sender;
@property NSMutableArray* cartitems;
@property Item *tappeditem;
@property NSString *name;
@property  NSString* pg;
@property Cartitem* c;
@property (nonatomic,strong) IBOutlet UITableView *tableview;
@end
