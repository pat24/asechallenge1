//
//  DetailVC.h
//  Facebook Login
//
//  Created by Prudhvi's on 9/28/14.
//
//

#import <UIKit/UIKit.h>
#import "Item.h"
#import "Cartitem.h"
#import "CartListVC.h"

@interface DetailVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *dvcname;
@property (weak, nonatomic) IBOutlet UILabel *dvccost;
@property (weak, nonatomic) IBOutlet UILabel *dvcweight;
@property (weak, nonatomic) IBOutlet UILabel *dvcstore;
@property NSMutableArray* cartitems;
- (IBAction)AddtoCart:(id)sender;


@property (nonatomic, strong)NSString *p;
@property (nonatomic, strong)NSString *p1;
@property (nonatomic, strong)NSString *p2;
@property (nonatomic, strong)NSString *p3;
@property (nonatomic, strong) Item *item;
@end
