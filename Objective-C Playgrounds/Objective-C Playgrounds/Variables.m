//
//  Variables.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Variables.h"

// Constants
const int myConstantInt = 7;
#define myConstantDefine 8
NSString* const myConstantStr = @"Hello";
#define myConstantString @"World"


// Internal property
@interface Variables ()
@property (nonatomic) int myInternalInt;
@end


@implementation Variables

+ (void) run {

    NSLog(@"--- Variables ---");

    // Primitives
    int x = 7;
    double d = 1.234;
    NSLog(@"x = %d  d = %f" , x, d);


    // Objects (note the * symbol)
    NSString* myStr = @"Hello World";
    NSNumber* verboseNumber = [[NSNumber alloc] initWithInt:8];
    NSNumber* shorthandNumber = @9;
    NSLog(@"myStr = %@ number = %@ and %@", myStr, verboseNumber, shorthandNumber);
    
    // Constants
    NSLog(@"numbers = %d and %d  Strings = %@ and %@",
          myConstantInt, myConstantDefine, myConstantStr, myConstantString);

    

    // Sneaky primitives (note the LACK of a * symbol)
    NSInteger y = 10;
    BOOL b = YES;
    CGFloat z = 2.345;
    CGRect rect = CGRectMake(0, 0, 100.0, 100.0);
    NSLog(@"b = %d  y = %d  \nz = %f  width = %f",
          b, (int)y, z, rect.size.width);

    // Properties
    Variables* obj = [[Variables alloc] init];
    obj.myNumber = @10;
    obj.myInt = 6;
    obj.myString = @"We share public properties!";
    
    NSLog(@"myNumber = %@  myInt = %d  myString = %@", obj.myNumber, obj.myInt, obj.myString);
    [obj  exampleInstanceMethod];
    NSLog(@"myNumber = %@  myInt = %d  myString = %@", obj.myNumber, obj.myInt, obj.myString);
}

- (void) exampleInstanceMethod {
    self.myNumber = @200;
    self.myInt = 420; //blaze it
    self.myString = @"We don't share public properties!";
    self.myInternalInt = 222;
}



@end
