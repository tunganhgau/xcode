//
//  ANHAppDelegate.h
//  View Switcher
//
//  Created by Anh Nguyen on 2/5/13.
//  Copyright (c) 2013 Anh Nguyen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ANHSwitchViewController;
@interface ANHAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ANHSwitchViewController *switchViewController;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
