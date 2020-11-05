//
//  DataHelper.m
//  iDrift0606
//
//  Created by Sophie Jeong on 6/7/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "DataHelper.h"

@implementation DataHelper
/*
- (id)init
{
    self = [super init];
    if (!self) return nil;
    
    //self.persistentContainer = [[NSPersistentContainer alloc] initWithName:@"DataModel"];
    [self.persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *description, NSError *error) {
        if (error != nil) {
            NSLog(@"Failed to load Core Data stack: %@", error);
            abort();
        }
        callback();
    }];
    
    return self;
}
/*
- (id)initWithCompletionBlock:(CallbackBlock)callback;
{
    self = [super init];
    if (!self) return nil;
    
    //This resource is the same name as your xcdatamodeld contained in your project
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"DataModel" withExtension:@"momd"];
    NSAssert(modelURL, @"Failed to locate momd bundle in application");
    // The managed object model for the application. It is a fatal error for the application not to be able to find and load its model.
    NSManagedObjectModel *mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    NSAssert(mom, @"Failed to initialize mom from URL: %@", modelURL);
    
    NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];
    
    NSManagedObjectContext *moc = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    [moc setPersistentStoreCoordinator:coordinator];
    [self setManagedObjectContext:moc];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSPersistentStoreCoordinator *psc = [[self managedObjectContext] persistentStoreCoordinator];
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSURL *documentsURL = [[fileManager URLsForDirectory:NSDocumentationDirectory inDomains:NSUserDomainMask] lastObject];
        // The directory the application uses to store the Core Data store file. This code uses a file named "DataModel.sqlite" in the application's documents directory.
        NSURL *storeURL = [documentsURL URLByAppendingPathComponent:@"DataModel.sqlite"];
        
        NSError *error = nil;
        NSPersistentStore *store = [psc addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error];
        if (!store) {
            NSLog(@"Failed to initalize persistent store: %@\n%@", [error localizedDescription], [error userInfo]);
            abort();
            //A more user facing error message may be appropriate here rather than just a console log and an abort
        }
        if (!callback) {
            //If there is no callback block we can safely return
            return;
        }
        //The callback block is expected to complete the User Interface and therefore should be presented back on the main queue so that the user interface does not need to be concerned with which queue this call is coming from.
        dispatch_sync(dispatch_get_main_queue(), ^{
            callback();
        });
    });
    return self;
}
 */
@end
