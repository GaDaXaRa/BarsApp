//
//  MoreInfoViewController.m
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "MoreInfoViewController.h"

@interface MoreInfoViewController ()

@property (weak, nonatomic) IBOutlet UITextView *barDescription;

@end

@implementation MoreInfoViewController

- (IBAction)closeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.barDescription.text = self.bar.description;
}


@end
