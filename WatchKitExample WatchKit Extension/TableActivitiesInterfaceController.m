//
//  TableActivitiesInterfaceController.m
//  WatchKitExample
//
//  Created by Jorginho on 5/18/15.
//  Copyright (c) 2015 JHRocha. All rights reserved.
//

#import "TableActivitiesInterfaceController.h"
#import "ActivityModel.h"
#import "Activity.h"
@interface TableActivitiesInterfaceController ()

@end

@implementation TableActivitiesInterfaceController

- (void)awakeWithContext:(id)context {
    
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    
    [self loadTableWithList:(NSArray *)context];
}

- (void)loadTableWithList:(NSArray*)list{
    
    [self.table setNumberOfRows:list.count withRowType:@"row"];
    
    for (int i=0; i<list.count; i++) {
        
        Activity *row = [self.table rowControllerAtIndex:i];
        
        [row.thumb setImage:[UIImage imageNamed:[ list[i] thumb] ]];
        [row.name setText:[ list[i] name] ];
        
    }
    
    
}


- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}




@end



