//
//  WeatherModel.h
//  Weather
//
//  Created by 王昌阳 on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NowModel, LocationModel;

@interface WeatherModel : NSObject

@property (nonatomic, strong)   LocationModel *location;
@property (nonatomic, strong)   NowModel *now;
@property (nonatomic, copy)     NSString *last_update;

@end
