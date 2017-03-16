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
    self = [self initWithName:@"" latitude:0 longitude:0];
    return self;
}

-(instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude {
    self = [super init];
    if (self) {
        _name = name;
        _latitude = latitude;
        _longitude = longitude;
        _trivia = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length {
    if (length > self.name.length) {
        return self.name;
    } else {
        return [self.name substringToIndex:length];
    }
}

-(BOOL)hasValidData {
    if (self.name == nil || [self.name isEqualToString:@""]) {
        return NO;
    } else if (self.latitude >= 90.0 || self.latitude <= -90) {
        return NO;
    } else if (self.longitude >= 180.0 || self.longitude <= -180) {
        return NO;
    } else {
        return YES;
    }
}

-(FISTrivium *)triviumWithMostLikes {
    if (self.trivia.count == 0) {
        return nil;
    } else {
        NSUInteger mostLikes = 0;
        FISTrivium *trivWithMostLikes = [[FISTrivium alloc] init];
        for (FISTrivium *triv in self.trivia) {
            if (triv.likes > mostLikes) {
                mostLikes = triv.likes;
                trivWithMostLikes = triv;
            }
        }
        return trivWithMostLikes;
    }
}

@end
