//
//  GroceryListTableViewController.m
//  Facebook Login
//
//  Created by Prudhvi's on 9/27/14.
//
//

#import "GroceryListTableViewController.h"


@interface GroceryListTableViewController ()
@property NSMutableArray *items;
@property NSMutableArray *GLWeight;
@property NSMutableArray *GLCost;
@property NSMutableArray *GLName;
@property  Item  *selectedItem;
@property NSInteger count;



@end

@implementation GroceryListTableViewController
@synthesize name;
@synthesize tappeditem;
@synthesize selectedItem;
@synthesize pg;
@synthesize c;
@synthesize cartitems,GLCost,GLName,GLWeight;
@synthesize items;
@synthesize count;
@synthesize tableview;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.items=[[NSMutableArray alloc]init];
    self.cartitems=[[NSMutableArray alloc]init];
    [self loadIntialData];
      count=0;
  
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)loadIntialData
{
    //Item *item = [[Item alloc] init];
    //[self.items addObjectsFromArray:item.itemName];
    Item *item1 = [[Item alloc] init];
    item1.itemName= @"Buy milk";
    item1.itemPrice=@"2.99";
    item1.itemDescription=@"2 gallons";
    item1.itemStore=@"wallmart";
    [self.items addObject:item1];
    
    Item *item2 = [[Item alloc] init];
    item2.itemName= @"bread";
    item2.itemPrice=@"1.99";
    item2.itemDescription=@"2 packs";
    item2.itemStore=@"wallmart";
    [self.items addObject:item2];
    Item *item3 = [[Item alloc] init];
    item3.itemName= @"chicken";
    item3.itemPrice=@"6.99";
    item3.itemDescription=@"2 lbs";
    item3.itemStore=@"wallmart";
    [self.items addObject:item3];
    Item *item4 = [[Item alloc] init];
    item4.itemName= @"eggs";
    item4.itemPrice=@"14.99";
    item4.itemDescription=@"2 packs";
    item4.itemStore=@"costco";
    [self.items addObject:item4];
    Item *item5 = [[Item alloc] init];
    item5.itemName= @"nutella";
    item5.itemPrice=@"11.99";
    item5.itemDescription=@"2 pack";
    item5.itemStore=@"costco";
    [self.items addObject:item5];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.items count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    /*UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }*/
    static NSString *simpleTableIdentifier = @"ListPrototypeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    Item *itemname = [self.items objectAtIndex:indexPath.row];
    //cell.textLabel.text = (NSMutableString *)itemname;
    cell.textLabel.text = itemname.itemName;
    //if([UILabel.identifier isEqualToString:@"price"])
    cell.detailTextLabel.text =itemname.itemPrice;
    //if([UILabel.identifier isEqualToString:@"weight"])
    if (itemname.selected) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
          return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{   c = [[Cartitem alloc]init];
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    Item *tappedItem = [items objectAtIndex:indexPath.row];
    tappedItem.selected = !tappedItem.selected;
    NSLog(@"%@",tappedItem.itemPrice);
    if(tappedItem.selected)
    {
        c.Citemname = tappedItem.itemName;
        c.Citemcost=tappedItem.itemPrice;
        c.CitemDesc=tappedItem.itemDescription;
         [self.cartitems addObject:c];
    }
    NSLog(@"in c %@",c.Citemcost);
   
    NSLog(@"%li",[cartitems count]);
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];

   
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"cellclicked"]){
      
         NSIndexPath *indexPath = [self.tableview indexPathForSelectedRow];
        DetailVC *destViewController = segue.destinationViewController;
        Item *ite = [[Item alloc]init];
        ite=[items objectAtIndex:indexPath.row];
        destViewController.p =ite.itemName;
          destViewController.p1 =ite.itemPrice;
        destViewController.p2 =ite.itemDescription;
        destViewController.p3=ite.itemStore;
        //NSIndexPath *indexPath=[self.tableView indexPathsForSelectedRows];
        
        //[self tableView:self didSelectRowAtIndexPath:indexPath];

        
        //UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
        //DetailVC *controller = (DetailVC *)navController.topViewController;
        //controller.p =[self.items objectAtIndex:indexPath.row];

        NSLog(@"in gro %@",destViewController.p);
 }

}


- (IBAction)AddtoCart:(id)sender {
    
  
    for (int i=0; i<[cartitems count];i++)
    {
        Cartitem *cnt=[[Cartitem alloc]init];
        cnt=cartitems[i];
        NSLog(@"%@",cnt.Citemcost);
        count=count+ (NSInteger)cnt.Citemcost;
        
    }
    NSLog(@"%ld",(long)count);
}
@end
