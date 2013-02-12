//
//  GMDirection.h
//  speakeasy
//
//  Created by Tanguy Goretti on 8/02/13.
//  Copyright (c) 2013 Djengo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GMDirection : NSObject

@property (strong,nonatomic) NSDictionary* directionResponse;

- (NSNumber*)distanceInMeters;
- (NSNumber*)durationInSec;
- (NSString*)durationHumanized;
- (NSString*)distanceHumanized;

+ (GMDirection*)initWithDirectionResponse:(NSDictionary*)directionResponse;

@end
