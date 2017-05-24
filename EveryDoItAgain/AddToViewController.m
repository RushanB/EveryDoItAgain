//
//  AddToViewController.m
//  EveryDoItAgain
//
//  Created by Rushan on 2017-05-24.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "AddToViewController.h"

@interface AddToViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *priorityLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionLabel;

@end

@implementation AddToViewController


- (IBAction)submitTapped:(id)sender {
    
    NSEntityDescription *toDoEntity = [NSEntityDescription entityForName:@"ToDo" inManagedObjectContext:self.managedObjectContext];
    NSManagedObject *toDoObject = [[NSManagedObject alloc]initWithEntity:toDoEntity insertIntoManagedObjectContext:self.managedObjectContext];
    
    [toDoObject setValue:self.titleLabel.text forKey:@"title"];
    [toDoObject setValue:self.descriptionLabel.text forKey:@"toDoDescription"];
    
    [self.managedObjectContext save:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
}


@end
