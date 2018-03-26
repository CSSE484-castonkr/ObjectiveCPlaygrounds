//
//  Functions.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Functions.h"

@implementation Functions

+ (void) run {
    NSLog(@"Your fortune... %@", [Functions fortuneCookie]);
    NSLog(@"Your fortune... %@", [Functions fortuneCookie]);
    
    Functions* f = [[Functions alloc] init];
    
    NSLog(@"The Magic 8 Ball says... %@", [f magic8Ball]);
    NSLog(@"The Magic 8 Ball says... %@", [f magic8Ball]);
    
    NSLog(@"Superhero name: %@", [f superheroName:@"Kiana"]);
    NSLog(@"Superhero name: %@", [f superheroName:@"Batman"]);
    
    NSLog(@"Volume for (3, 3, 3): %f", [Functions calculateVolumeForLength: 3
                                                                  forWidth: 3
                                                                 forHeight: 3]);
    NSLog(@"Volume for (1.5, 2, 1): %f", [Functions calculateVolumeForLength: 1.5
                                                                    forWidth: 2
                                                                   forHeight: 1]);

}

+ (NSString*) fortuneCookie{
    int numFriends = (int)arc4random_uniform(300);
    return [NSString stringWithFormat:@"\nYou will gain %d friends on Facebook today!", numFriends];
}

- (NSString*) magic8Ball{
    int numFriends = (int)arc4random_uniform(5);
    return [NSString stringWithFormat:@"\nYou will gain %d friends on Google+ today!", numFriends];
}

- (NSString*) superheroName: (NSString*) name{
    return [NSString stringWithFormat:@"Super %@", [name uppercaseString]];
}

+ (double) calculateVolumeForLength: (double) length forWidth: (double) width forHeight: (double) height{
    return length * width * height;
}


@end
