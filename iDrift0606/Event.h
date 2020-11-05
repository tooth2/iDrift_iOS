//
//  Event.h
//  iDrift0606
//
//  Created by Sophie Jeong on 6/7/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Event : NSManagedObject
@property (nonatomic, retain) NSString * eventName;
@property (nonatomic, retain) NSString * eventTime;
@property (nonatomic, retain) NSString * eventLocation;

@end
