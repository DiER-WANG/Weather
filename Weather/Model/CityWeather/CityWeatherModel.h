//
//  CityWeatherModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CoordModel, WeatherModel, MainModel, WindModel, CloudsModel, SysModel;

@interface CityWeatherModel : NSObject

@property (nonatomic, strong) CoordModel        *coord;
@property (nonatomic, strong) NSArray           *weather;
@property (nonatomic, copy)   NSString          *base;
@property (nonatomic, strong) MainModel         *main;
@property (nonatomic, assign) NSInteger         visibility;
@property (nonatomic, strong) WeatherModel      *wind;
@property (nonatomic, strong) CloudsModel       *clouds;
@property (nonatomic, assign) NSTimeInterval    dt;
@property (nonatomic, strong) SysModel          *sys;
@property (nonatomic, assign) long              cwid;
@property (nonatomic, copy)   NSString          *name;
@property (nonatomic, assign) NSInteger         cod;

@end
