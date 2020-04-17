//
//  Person.h
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property NSString* name;
@property NSMutableArray* friends;

-(void) sayHello;
-(void) sayGoodBye;

- (instancetype)initWithName: (NSString *) initialName;

@end

NS_ASSUME_NONNULL_END
