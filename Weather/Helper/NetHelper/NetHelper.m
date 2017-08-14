//
//  NetHelper.m
//  Weather
//
//  Created by SSY on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "NetHelper.h"
#import <AFNetworking.h>

@interface NetHelper()

@end

static NetHelper *singleton = nil;
@implementation NetHelper

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[NetHelper alloc] init];
    });
    return singleton;
}

- (void)getWeather:(NSString *)city completion:(void (^)(NSError *, NSDictionary *))block {

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSDictionary *para = @{
                           @"key": kXinzhiWeatherApiKey,
                           @"localtion": @"beijing",
                           @"language": @"zh-Hans",
                           @"unit": @"c"};
    // [BaseURL stringByAppendingString:CurrentWeather]
    [manager GET:@"https://api.seniverse.com/v3/weather/now.json?key=ntj1549mvwi54nqi&location=beijing&language=zh-Hans&unit=c" parameters:para progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"");
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"");
    }];
}

@end
