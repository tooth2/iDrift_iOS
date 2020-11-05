//
//  ThirdTableViewController.h
//  iDrift0606
//
//  Created by Sophie Jeong on 6/6/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AddEventViewController.h"



@interface ThirdTableViewController : UITableViewController<NSFetchedResultsControllerDelegate, EventAddDelegate>

///// Core Data
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (nonatomic) BOOL suspendAutomaticTrackingOfChangesInManagedObjectContext;

@end
