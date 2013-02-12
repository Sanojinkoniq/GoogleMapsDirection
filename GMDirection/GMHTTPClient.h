//
//  GMHTTPClient.h
//  speakeasy
//
//  Created by Tanguy Goretti on 8/02/13.
//  Copyright (c) 2013 Djengo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface GMHTTPClient : AFHTTPClient

+ (GMHTTPClient*)sharedInstance;

@end
