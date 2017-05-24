//
//  MasterViewController.h
//  EveryDoItAgain
//
//  Created by Rushan on 2017-05-24.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "EveryDoItAgain+CoreDataModel.h"
#import "AddToViewController.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong, nonatomic) AddToViewController *aVC;

@end

