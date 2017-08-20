//
//  WeatherHelper.h
//  Weather
//
//  Created by 王昌阳 on 2017/8/20.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherHelper : NSObject


/**
 单例初始化

 @return 单例对象
 */
+ (instancetype)sharedHelper;

/**
 获得请求返回语言

 @return 返回语言
 */
- (NSString *)getWeatherLanguage;


/**
 获得请求返回天气的单位

 @return 返回天气单位
 */
- (NSString *)getWeatherUnit;

@end
