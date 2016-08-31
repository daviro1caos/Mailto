//
//  ViewController.m
//  Mailto
//
//  Created by Daniel on 8/31/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)emailButtonPushed:(id)sender {
    
    

    // From within your active view controller
    /*
     // From within your active view controller
     if([MFMailComposeViewController canSendMail]) {
     MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
     mailCont.mailComposeDelegate = self;
     
     [mailCont setSubject:@"yo!"];
     [mailCont setToRecipients:[NSArray arrayWithObject:@"joel@stackoverflow.com"]];
     [mailCont setMessageBody:@"Don't ever want to give you up" isHTML:NO];
     
     [self presentModalViewController:mailCont animated:YES];
     [mailCont release];
     }
     */
    
    if([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
        mailCont.mailComposeDelegate = self;
        [mailCont setSubject:@"Your email"];
        [mailCont setMessageBody:[@"Your body for this message is " stringByAppendingString:@" this is awesome"] isHTML:NO];
        [self presentViewController:mailCont animated:YES completion:nil];
    }
    
}


// Then implement the delegate method

/*
 - (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [self dismissModalViewControllerAnimated:YES];
}
 */

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    //handle any error
    [controller dismissViewControllerAnimated:YES completion:nil];
}

@end
