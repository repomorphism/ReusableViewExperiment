//
//  HPLPerson.m
//  ReusableViewExperiment
//
//  Created by Paul on 12/29/15.
//  Copyright © 2015 Mathemusician.net. All rights reserved.
//

#import "HPLPerson.h"

@implementation HPLPerson

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName {

    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName  = lastName;
    }
    return self;
}

@end
