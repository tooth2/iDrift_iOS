//
//  AddEventViewController.h
//  iDrift0606
//
//  Created by Sophie Jeong on 6/6/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Event.h"
//#import "Drift0606+CoreDataModel.h"


@protocol EventAddDelegate;
@interface AddEventViewController : UIViewController<EventAddDelegate>
@property (nonatomic, unsafe_unretained) id <EventAddDelegate> delegate;
@property (strong, nonatomic) NSFetchedResultsController<Event *> *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (weak, nonatomic) IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UITextField *eventTime;
@property (weak, nonatomic) IBOutlet UITextField *eventLocation;
- (IBAction)saveEvent:(id)sender;

@end
#pragma mark -
@protocol EventAddDelegate
- (void)addViewController:(AddEventViewController *)controller didAddEvent:(Event *)event;
@end
