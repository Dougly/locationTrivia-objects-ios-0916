//
//  FISLocation.h
//  locationTrivia-Objects
//
//  Created by Douglas Galante on 3/15/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISTrivium.h"

@interface FISLocation : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *trivia;
@property (nonatomic) CGFloat latitude;
@property (nonatomic) CGFloat longitude;

-(instancetype)init;

-(instancetype)initWithName:(NSString *)name latitude:(CGFloat)latitude longitude:(CGFloat)longitude;

-(NSString *)stringByTruncatingNameToLength:(NSUInteger)length;

-(BOOL)hasValidData;

-(FISTrivium *)triviumWithMostLikes;

@end
