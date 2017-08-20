//
//  NetHelper.m
//  Weather
//
//  Created by SSY on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "NetHelper.h"
#import "CityWeatherModel.h"

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

- (void)getWeatherByCityName:(NSString *)cityName completion:(void (^)(NSError *, CityWeatherModel *))block {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSDictionary *dict = @{@"q": cityName,
                           @"appid": OpenWeatherApi
                           };
    
    [manager GET:[BaseURL stringByAppendingPathComponent:WeatherPath] parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        CityWeatherModel *weather = [CityWeatherModel yy_modelWithJSON:responseObject];
        block(nil, weather);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        block(error, nil);
    }];
}

- (void)getWeatherByCityId:(long)cityId completion:(void (^)(NSError *, CityWeatherModel *))block {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSDictionary *dict = @{@"id": @(cityId),
                           @"appid": OpenWeatherApi
                           };
    [manager GET:[BaseURL stringByAppendingPathComponent:WeatherPath] parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        CityWeatherModel *weather = [CityWeatherModel yy_modelWithJSON:responseObject];
        block(nil, weather);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        block(error, nil);
    }];
}


#pragma mark - Net Parameter
- (NSDictionary *)commonParameters {
    
    WeatherHelper *parameter = [WeatherHelper sharedHelper];
    
    return @{@"appid": OpenWeatherApi,
             @"lang": [parameter getWeatherLanguage],
             @"units": [parameter getWeatherUnit]};
}

@end
