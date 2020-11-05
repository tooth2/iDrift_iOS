//
//  DataHelper.h
//  iDrift0606
//
//  Created by Sophie Jeong on 6/7/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>
#import "Event.h"

@interface DataHelper : NSObject
@property (strong, nonatomic, readonly) NSPersistentContainer *persistentContainer;

@property (strong, nonatomic) NSFetchedResultsController<Event *> *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
/*
- (id)initWithCompletionBlock:(CallbackBlock)callback;
*/
@end
