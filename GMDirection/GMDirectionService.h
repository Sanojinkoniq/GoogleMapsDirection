//
//  GMDirectionService.h
//  speakeasy
//
//  Created by Tanguy Goretti on 8/02/13.
//  Copyright (c) 2013 Djengo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GMHTTPClient.h"
#import "GMDirection.h"

@interface GMDirectionService : NSObject

- (void)getDirectionsFrom:(NSString*)origin to:(NSString*)destination succeeded:(void(^)(GMDirection *directionResponse))success failed: (void (^)(NSError *error))failure;
+ (GMDirectionService*)sharedInstance;

@end