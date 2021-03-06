//
//  Activity.h
//  WatchKitExample
//
//  Created by Jorginho on 5/18/15.
//  Copyright (c) 2015 JHRocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface Activity : NSObject
@property (nonatomic, strong) IBOutlet WKInterfaceImage *thumb;

@property (nonatomic, strong) IBOutlet WKInterfaceLabel *name;

@end
