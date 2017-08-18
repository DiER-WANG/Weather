//
//  WeatherModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherModel : NSObject

@property (nonatomic, assign)   NSInteger   wid;
@property (nonatomic, copy)     NSString    *main;
@property (nonatomic, copy)     NSString    *desc;
@property (nonatomic, copy)     NSString    *icon;

@end
