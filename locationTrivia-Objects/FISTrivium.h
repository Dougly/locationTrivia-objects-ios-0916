//
//  FISTrivium.h
//  locationTrivia-Objects
//
//  Created by Douglas Galante on 3/15/17.
//  Copyright © 2017 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTrivium : NSObject

@property (strong, nonatomic) NSString *content;
@property (nonatomic) NSUInteger likes;

-(instancetype)init;

-(instancetype)initWithContent:(NSString *)content likes:(NSUInteger)likes;

@end
