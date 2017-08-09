//
//  NetHelper.h
//  Weather
//
//  Created by SSY on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetHelper : NSObject

/**
 查询城市的实时天气情况

 @param city 城市名字
 @param block 查询结果
 */
- (void)getWeather:(NSString *)city completion:(void (^)(NSError *error, NSDictionary *dict))block;

@end
