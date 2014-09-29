//
//  DetailVC.m
//  Facebook Login
//
//  Created by Prudhvi's on 9/28/14.
//
//

#import "DetailVC.h"
#import "Item.h"
#import "GroceryListTableViewController.h"

@interface DetailVC ()

@end

@implementation DetailVC
@synthesize p;
@synthesize p1;
@synthesize p2;@synthesize p3;
@synthesize dvcname;
@synthesize dvcstore;
@synthesize cartitems;
@synthesize dvcweight;
@synthesize dvccost;

@synthesize item;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
   
    //GroceryListTableViewController *gv =[[GroceryListTableViewController alloc] init];
    dvcname.text=p;
    dvccost.text=p1;
    dvcweight.text=p2;
    dvcstore.text=p3;

    
    //[[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"selected"];
    //[[NSUserDefaults standardUserDefaults] synchronize];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)AddtoCart:(id)sender {
    cartitems = [[NSMutableArray alloc] init];

    Cartitem *c = [[Cartitem alloc]init];
    c.Citemname=dvcname.text;
    c.Citemcost=dvccost.text;
    c.CitemDesc=dvcweight.text;
    NSLog(@"%@",c.Citemname);

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Add Product" message:@"Product added to cart" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    [cartitems addObject:c];
    NSLog(@"%lu",(unsigned long)[cartitems count]);
    
    
}
@end
