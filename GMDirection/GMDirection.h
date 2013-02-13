//
//  GMDirection.h
//  speakeasy
//
//  Created by Djengo on 8/02/13.
//  Copyright (c) 2013 Djengo. Under MIT Licence.
//  http://opensource.org/licenses/MIT

#import <Foundation/Foundation.h>

@interface GMDirection : NSObject

@property (strong,nonatomic) NSDictionary* directionResponse;

- (NSNumber*)distanceInMeters;
- (NSNumber*)durationInSec;
- (NSString*)durationHumanized;
- (NSString*)distanceHumanized;

+ (GMDirection*)initWithDirectionResponse:(NSDictionary*)directionResponse;

@end
