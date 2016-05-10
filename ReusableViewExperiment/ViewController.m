//
//  ViewController.m
//  ReusableViewExperiment
//
//  Created by Paul on 12/29/15.
//  Copyright © 2015 Mathemusician.net. All rights reserved.
//

#import "ViewController.h"
#import "HPLProfileView.h"
#import "HPLPerson.h"


@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(HPLProfileView) NSArray *profileViews;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *people = @[ [[HPLPerson alloc] initWithFirstName:@"Taylor" lastName:@"Swift"],
                         [[HPLPerson alloc] initWithFirstName:@"Barack" lastName:@"Obama"],
                         [[HPLPerson alloc] initWithFirstName:@"Tim"    lastName:@"Cook"] ];

    [self.profileViews enumerateObjectsUsingBlock:^(HPLProfileView *profileView, NSUInteger idx, BOOL * _Nonnull stop) {
        profileView.person = people[idx];
    }];

    // dynamic
    HPLProfileView *dynamicView = [[HPLProfileView alloc] initWithFrame:CGRectMake(0, 20, 70, 50)];
    dynamicView.person = [[HPLPerson alloc] initWithFirstName:@"Chris" lastName:@"Lattner"];
    [self.view addSubview:dynamicView];
}

@end
