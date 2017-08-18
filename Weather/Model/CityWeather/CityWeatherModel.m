//
//  CityWeatherModel.m
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "CityWeatherModel.h"
#import "WeatherModel.h"

@implementation CityWeatherModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"cwid" : @"id",
             };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"weather" : [WeatherModel class]};
}

@end
