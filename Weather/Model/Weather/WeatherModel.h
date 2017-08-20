//
//  WeatherModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherModel : NSObject

/**
 Weather condition id
 */
@property (nonatomic, assign)   NSInteger   wid;

/**
 Group of weather parameters (Rain, Snow, Extreme etc.)
 */
@property (nonatomic, copy)     NSString    *main;

/**
 Weather condition within the group
 */
@property (nonatomic, copy)     NSString    *desc;

/**
 Weather icon id
 */
@property (nonatomic, copy)     NSString    *icon;

@end
