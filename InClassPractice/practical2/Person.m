//
//  Person.m
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Person.h"

@implementation Person

//overriding the init method in order to initialize the Array
- (instancetype)init{
    self = [super init];
    if (self) {
        //here we have no other option but using _friends
        _friends = [[NSMutableArray alloc] init];
    }
    return self;
}
//creating a new init passing the person's name
//don't forget to initialize the Array as well
- (instancetype)initWithName: (NSString *) initialName{
    self = [super init];
    
    if (self) {
        _friends = [[NSMutableArray alloc] init];
        [self setName:initialName];
    }
    return self;
}

- (void)sayHello{
    NSLog(@"Hello, says %@", [self name]);
}

- (void)sayGoodBye{
    NSLog(@"Goodbye, says %@", [self name]);
}

@end
