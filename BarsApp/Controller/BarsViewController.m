//
//  BarsViewController.m
//  BarsApp
//
//  Created by Miguel Santiago Rodríguez on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BarsViewController.h"
#import "Bars.h"
#import "MoreInfoViewController.h"

@interface BarsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@property (weak, nonatomic) IBOutlet UILabel *barTitle;
@property (weak, nonatomic) IBOutlet UILabel *address;

@property (strong, nonatomic) Bars *bars;
@property (strong, nonatomic) Bar *currentBar;

@end

@implementation BarsViewController

- (Bars *)bars {
    if (!_bars) {
        _bars = [[Bars alloc] initWithFile:@"bars_list"];
    }
    
    return _bars;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.currentBar = [self.bars.barsList firstObject];
    [self drawCurrentBar];
}

- (IBAction)nextBar:(id)sender {
    self.currentBar = [self.bars nextBar];
    [self drawCurrentBar];
}

- (void) drawCurrentBar {
    self.barTitle.text = self.currentBar.name;
    self.rating.text = [NSString stringWithFormat:@"Rating: %d", self.currentBar.rate];
    self.address.text = self.currentBar.address;
    
    NSURL *imageUrl = [NSURL URLWithString:self.currentBar.image];
    NSData *data = [NSData dataWithContentsOfURL:imageUrl];
    UIImage *barImage = [UIImage imageWithData:data];
    self.imageView.image = barImage;
}

- (IBAction)previousBar:(id)sender {
    self.currentBar = [self.bars previousBar];
    [self drawCurrentBar];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MoreInfoViewController *moreInfoViewController = (MoreInfoViewController *) [segue destinationViewController];
    moreInfoViewController.bar = self.currentBar;
}


@end
