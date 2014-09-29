//
//  AppDelegate.h
//  SwagStore
//
//  Created by Luz Caballero on 8/5/13.
//  Copyright (c) 2013 Facebook Inc. All rights reserved.
//

#import "Item.h"

// A class to represent an item/product that is available in the shop.
@implementation Item
@synthesize itemName;
@synthesize itemDescription;
@synthesize itemPrice;
@synthesize itemStore;
- (instancetype)init
{
    // Call the superclass's designated initializer
    self = [super init];
    if (self) {
        
        
        //itemName =@[@"helloworld",@"onionrings", @"buffalo wild",@"hellowor"];
        //itemDescription=@[@"helloworld",@"onionrings", @"buffalo wild",@"hellowor"];
        //itemPrice =@[@"2.99",@"3.99", @"5.99",@"6.99"];
        //itemStore=@[@"helloworld",@"onionrings", @"buffalo wild",@"hellowor"];
        
        
        
      /*// Give the instance variables initial values
      //[self setItemFBID:nil];
      //if ([object objectForKey:@"fbid"]){
        [self setItemName:[object objectForKey:@"fbid"]];
      //}
      [self setItemName:[object objectForKey:@"title"]];
      [self setItemDescription:[object objectForKey:@"description"]];
      [self setItemPrice:[object objectForKey:@"link"]];
      [self setItemStore:[object objectForKey:@"sku"]];
      //NSDictionary *image = [[object objectForKey:@"images"] objectForKey:@"800"];
      //NSURL *imageURL = [NSURL URLWithString:[image objectForKey:@"url"]];
      //NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
      //[self setItemImage:imageData];*/
    }
    
    return self;
}

/*- (instancetype)initWithFBObject:(NSDictionary *)object
{
  // Call the superclass's designated initializer
  self = [super init];
  if (self) {
    // Give the instance variables initial values
    [self setItemFBID:[object objectForKey:@"id"]];
    [self setItemName:[object objectForKey:@"title"]];
    [self setItemDescription:[object objectForKey:@"description"]];
    [self setItemURL:[object objectForKey:@"url"]];
    [self setItemSKU:[[object objectForKey:@"data"] objectForKey:@"retailer_part_no"]];
    NSDictionary *image = [[object objectForKey:@"image"] objectAtIndex:0];
    NSURL *imageURL = [NSURL URLWithString:[image objectForKey:@"url"]];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    [self setItemImage:imageData];
  }
  
  return self;
}*/

@end
