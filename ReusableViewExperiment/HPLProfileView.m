//
//  HPLProfileView.m
//  ReusableViewExperiment
//
//  Created by Paul on 12/29/15.
//  Copyright © 2015 Mathemusician.net. All rights reserved.
//

#import "HPLProfileView.h"
#import "HPLPerson.h"


@interface HPLProfileView ()

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;

@end


@implementation HPLProfileView

#pragma mark - Setter

- (void)setPerson:(HPLPerson *)person {
    _person = person;

    _firstNameLabel.text = person.firstName;
    _lastNameLabel.text  = person.lastName;
}

#pragma mark - Custom loading
/*
- (void)awakeFromNib {
    [super awakeFromNib];

    [self addInsideView];
}
*/

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self addInsideView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addInsideView];
    }
    return self;
}

- (void)addInsideView {

    UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"HPLProfileView" owner:self options:nil] firstObject];

    [self addSubview:view];

    view.translatesAutoresizingMaskIntoConstraints = NO;

    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

@end
