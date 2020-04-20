//
//  Person+Relations.m
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Person+Relations.h"

@implementation Person (Relations)


-(instancetype ) addFriend:(Person*) person{
    [[self friends] addObject:person];
    return self;
}

- (void)removeFriend:(Person *)person{
    [[self friends] removeObject:person];
}

- (void)greetFriends{
    for (Person* person in [self friends]) {
        NSLog(@"Hello there, %@", [person name]);
    }
}

@end
