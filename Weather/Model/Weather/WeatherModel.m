//
//  WeatherModel.m
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "WeatherModel.h"

@implementation WeatherModel
+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"wid" : @"id",
             @"desc" : @"description"
             };
}
@end
