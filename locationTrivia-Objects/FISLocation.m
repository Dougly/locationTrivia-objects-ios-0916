//
//  FISLocation.m
//  locationTrivia-Objects
//
//  Created by Douglas Galante on 3/15/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import "FISLocation.h"

@implementation FISLocation

-(instancetype)init {
    self = [super init];
    return self;
}

-(instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude {
    self = [super init];
    return self;
}

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    return nil;
}

-(BOOL)hasValidData {
    return nil;
}

-(FISTrivium *)triviumWithMostLikes {
    return nil;
}

@end
