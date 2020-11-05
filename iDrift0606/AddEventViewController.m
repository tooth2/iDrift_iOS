//
//  AddEventViewController.m
//  iDrift0606
//
//  Created by Sophie Jeong on 6/6/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "AddEventViewController.h"
//#import "Event.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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




- (IBAction)saveEvent:(id)sender {
    NSLog(@"saveEvent Clickd");
    //[self.navigationController popViewControllerAnimated:YES];
    NSLog(@"fectched cotnroller:%@", self.fetchedResultsController.debugDescription);
    NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
    NSLog(@"addContext");
    NSLog(@"Context:%@ , %@", context.description, context.debugDescription);
    Event *newEvent = [[Event alloc] initWithContext:context];
    
    NSLog(@"create Event");
    NSLog(@"%@", _eventName.text);
    newEvent.eventName = _eventName.text;
    newEvent.eventTime = _eventTime.text;
    newEvent.eventLocation = _eventLocation.text;
    NSLog(@"%@", _eventLocation.text);
    // If appropriate, configure the new managed object.
    //newEvent.timestamp = [NSDate date];
    
    
    // Save the context.
    NSError *error = nil;
    if (![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
         NSAssert(NO, @"Error saving context: %@\n%@", [error localizedDescription], [error userInfo]);
        NSLog(@"Unresolved Saving Context error %@, %@", error, error.userInfo);
        abort();
    }
    
    [self.navigationController dismissModalViewControllerAnimated:true];
    
    //dismiss
    NSLog(@"navigationController Dismissed");
   //[self.navigationController popToRootViewControllerAnimated:YES];
    
}
@end
