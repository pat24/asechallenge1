//
//  TODoList.h
//  ToDoList
//
//  Created by Prudhvi's on 6/7/14.
//  Copyright (c) 2014 Prudhvi Nalluri. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TODoItem : NSObject


@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;


@end
