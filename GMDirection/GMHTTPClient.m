//
//  GMHTTPClient.m
//  speakeasy
//
//  Created by Tanguy Goretti on 8/02/13.
//  Copyright (c) 2013 Djengo. All rights reserved.
//

#import "GMHTTPClient.h"

static NSString *GOOGLE_MAPS_API_URL = @"https://maps.googleapis.com/maps/api/";

@implementation GMHTTPClient

+ (GMHTTPClient*)sharedInstance
{
    static GMHTTPClient *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL *serverURL = [NSURL URLWithString:GOOGLE_MAPS_API_URL];
        sharedInstance = [[GMHTTPClient alloc] initWithBaseURL:serverURL];
        [sharedInstance registerHTTPOperationClass:[AFJSONRequestOperation class]];
        [sharedInstance setDefaultHeader:@"Accept" value:@"application/json"];
        [sharedInstance setParameterEncoding:AFJSONParameterEncoding];
        [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    });
    return sharedInstance;
}

@end
