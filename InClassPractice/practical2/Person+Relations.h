//
//  Person+Relations.h
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person (Relations)
//category Relations created for Person
-(instancetype ) addFriend:(Person*) person;
-(void) removeFriend:(Person *) person;
-(void) greetFriends;
@end

NS_ASSUME_NONNULL_END
