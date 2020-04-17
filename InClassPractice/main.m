//
//  main.m
//  InClassPractice
//
//  Created by alex on 16/4/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Cylinder.h"
#import "Person.h"
#import "Person+Relations.h"

void practical1(void);
void practical2(void);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"===============Practical 1===============");
        practical1();
        NSLog(@"===============Practical 2===============");
        practical2();
        NSLog(@"===============End===============");
    }
    return 0;
}

void practical1(){
    /**
     Create a class called Circle. It should have only one attribute: radius, and its methods should be the following:
     calculateDiameter
     calculateCircumference
     calculateArea
     
     Formulas are as following:
     
     Diameter = 2 x Radius
     Circumference = 2¶ x Radius
     Area = ¶ x Radius2
     Predefine objective-c PI value in math.h:
     #define M_PI   3.14159265358979323846264338327950288;
     
     Then, create a class called “Cylinder”, extend from Circle, with the additional function called calculateVolume.
     */
    
    Circle *circle = [[Circle alloc]init];
    [circle setRadius:5.0];
    NSLog(@"The area of the circle is %f", [circle calculateArea]);
    NSLog(@"The circumference of the circle is %f", [circle calculateCircumference]);
    NSLog(@"The diameter of the circle is %f", [circle calculateDiameter]);
    
    Cylinder *cylinder = [[Cylinder alloc]init];
    [cylinder setRadius:5.0f];
    [cylinder setHeight:10.0f];
    
    NSLog(@"The volume of the cylinder is %f", [cylinder calculateVolume]);
}

void practical2(){
    /**
     Task1
     create a class called "Person" with 2 members: friend and name
     Person can say Hello and goodbye
     Note: Person can have more than one friend
     
     Task2
     Create a category for the following behavior:
     A "Person" can add more than one friend  (one friend at a time), a friend is another Person
     A "Person" can remove a friend
     A "Person" can greet all its friends at the same time.
     
     Task3
     Test your classes in the main class.
     Create 3 Persons: Alex, Carl, and John
     Alex's friends are Carl and John
     
     Desired output:
     Hello, says Alex
     Hello there, Carl
     Hello there, John
     Goodbye, says Alex
     */
    
    //one way to initialise a person
    Person* alex = [[Person alloc] init];
    [alex setName:@"Alex"];
    //second way to initialize a person, by using the initWithName method we've constructed
    Person* carl = [[Person alloc] initWithName:@"Carl"];
    Person* john = [[Person alloc] initWithName:@"John"];
    //we can call the addFriend method in this way
    [alex addFriend:carl];
    [alex addFriend:john];
    
    [alex sayHello];
    //greet all friends
    [alex greetFriends];
    [alex sayGoodBye];
    
    NSLog(@"creating 2 more friends");
    //create another 2 friends
    Person* michael = [[Person alloc] initWithName:@"Michael"];
    Person* mike = [[Person alloc] initWithName:@"Mike"];
    
    //modify the addFriend method to return instancetype instead of void
    //now we are able to do this:
    [[[alex addFriend:michael] addFriend:mike] addFriend:john];
    
    NSLog(@"after adding Michael, Mike and John as friends, greet all friends");
    [alex greetFriends];
    //pay attention I've added john twice, it's the same object but added twice to the array.
    //Let's test a concept, in objective-c we work with pointers to objects, therefore in theory if I change
    //john's name it should change in two positions in the array, possition 1 and 4, let's try it
    NSLog(@"changing John's name by NoMoreJohn");
    NSMutableArray* myFriends = [alex friends];
    Person* puppet = [myFriends objectAtIndex:1];
    [puppet setName:@"NoMoreJohn"];
    [alex greetFriends];
    
    //removing a friend from the list
    NSLog(@"removing puppet person: NoMoreJohn");
    [alex removeFriend:puppet];
    [alex greetFriends];
    
}
