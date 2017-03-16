//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISLocation.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)allLocationNames {
    NSMutableArray *names = [[NSMutableArray alloc] init];
    for (FISLocation *loc in self.locations) {
        [names addObject:loc.name];
        
    }
    return names;
}

- (FISLocation *)locationNamed:(NSString *)name {
//    NSPredicate *findLocationWithName = [NSPredicate predicateWithFormat:@"name LIKE %@", name];
//    NSArray *filteredArray = [self.locations filteredArrayUsingPredicate:findLocationWithName];
//    if (filteredArray.count == 0) {
//        return filteredArray[0];
//    }
    
    for (FISLocation *loc in self.locations) {
        if ([loc.name isEqualToString:name]) {
            return loc;
        }
    }
    return nil;
}

- (NSArray *)locationsNearLatitude:(CGFloat)latitude longitude:(CGFloat)longitude margin:(CGFloat)margin {
    NSMutableArray *locationsInRange = [[NSMutableArray alloc] init];
    for (FISLocation *loc in self.locations) {
        if (loc.latitude < latitude - margin || loc.latitude > latitude + margin) {
            continue;
        } else if  (loc.longitude < longitude - margin || loc.longitude > longitude + margin) {
            continue;
        } else {
            [locationsInRange addObject:loc];
        }
    }
    return locationsInRange;
}

@end
