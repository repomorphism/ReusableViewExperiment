//
//  HPLPerson.h
//  ReusableViewExperiment
//
//  Created by Paul on 12/29/15.
//  Copyright © 2015 Mathemusician.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HPLPerson : NSObject

@property (nonatomic) NSString *firstName;
@property (nonatomic) NSString *lastName;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

@end
