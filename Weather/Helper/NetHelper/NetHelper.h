//
//  NetHelper.h
//  Weather
//
//  Created by SSY on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CityWeatherModel;
@interface NetHelper : NSObject

/**
 单例初始化方法

 @return 单例
 */
+ (instancetype)sharedInstance;

/**
 查询城市的实时天气情况

 @param cityName 城市名字
 @param block 查询结果
 */
- (void)getWeatherByCityName:(NSString *)cityName completion:(void (^)(NSError *error, CityWeatherModel *cityWeather))block;


/**
 查询城市的实时天气情况

 @param cityId 城市 ID
 @param block 查询回调
 */
- (void)getWeatherByCityId:(long)cityId completion:(void (^)(NSError *error, CityWeatherModel *cityWeather))block;

@end
