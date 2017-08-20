//
//  MainModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainModel : NSObject

/**
 Temperature
 */
@property (nonatomic, assign) float  temp;

/**
 Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data)
 */
@property (nonatomic, assign) NSInteger  pressure;

/**
 Humidity
 */
@property (nonatomic, assign) NSInteger  humidity;

/**
 Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally)
 */
@property (nonatomic, assign) NSInteger  tempMin;

/**
 Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally)
 */
@property (nonatomic, assign) NSInteger  tempMax;

@end
