//
//  InterfaceController.m
//  WatchKitExample WatchKit Extension
//
//  Created by Jorginho on 5/18/15.
//  Copyright (c) 2015 JHRocha. All rights reserved.
//

#import "InterfaceController.h"
#import "TableActivitiesInterfaceController.h"
#import "ActivityModel.h"
@interface InterfaceController()
@property NSMutableArray *rowList;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    self.rowList = [NSMutableArray new];
    [self loadMock];

    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (id) contextForSegueWithIdentifier:(NSString *)segueIdentifier{
    
    return self.rowList;
    
    
}


- (void)loadMock{
    
    for (int i=0; i<10; i++) {
        
        ActivityModel *activity = [ActivityModel new];
        
        activity.name = @"Jorge";
        activity.thumb = @"img1";
        
        [self.rowList addObject:activity];
    }
    
}

- (void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification{
    
    [self.rowList removeAllObjects];
    
    if ([identifier isEqualToString:@"cocoaheads"]) {
        for (int i=0; i<10; i++) {
        
            ActivityModel *activity = [ActivityModel new];
        
            activity.name = @"CocoaHeads";
            activity.thumb = @"cocoahead";
        
            [self.rowList addObject:activity];
        }
    }
    
    
}
@end



