//
//  GMDirection.m
//  speakeasy
//
//  Created by Tanguy Goretti on 8/02/13.
//  Copyright (c) 2013 Djengo. All rights reserved.
//

#import "GMDirection.h"

static const NSString *ROUTES   = @"routes";
static const NSString *LEGS     = @"legs";
static const NSString *DISTANCE = @"distance";
static const NSString *DURATION = @"duration";
static const NSString *VALUE    = @"value";
static const NSString *TEXT     = @"text";

@implementation GMDirection

@synthesize directionResponse;

+ (GMDirection*)initWithDirectionResponse:(NSDictionary*)directionResponse
{
    GMDirection *direction = [[GMDirection alloc] init];
    [direction setDirectionResponse:directionResponse];
    return direction;
}

- (NSArray*)routes
{
    return [[self directionResponse] objectForKey:ROUTES];
}

- (NSDictionary*)firstRoute
{
    return [[self routes] objectAtIndex:0];
}

- (NSArray*)legs
{
    return [[self firstRoute] objectForKey:LEGS];
}

- (NSDictionary*)firstLeg
{
    return [[self legs] objectAtIndex:0];
}

- (NSDictionary*)distance
{
    return [[self firstLeg] objectForKey:DISTANCE];
}

- (NSNumber*)distanceInMeters
{
    return [[self distance] objectForKey:VALUE];
}

- (NSString*)distanceHumanized
{
    return [[self distance] objectForKey:TEXT];
}

- (NSDictionary*)duration
{
    return [[self firstLeg] objectForKey:DURATION];
}

- (NSNumber*)durationInSec
{
    return [[self duration] objectForKey:VALUE];
}

- (NSString*)durationHumanized
{
    return [[self duration] objectForKey:TEXT];
}

@end
