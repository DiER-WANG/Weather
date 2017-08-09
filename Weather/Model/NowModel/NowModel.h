//
//  NowModel.h
//  Weather
//
//  Created by 王昌阳 on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NowModel : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *temperature;
@property (nonatomic, copy) NSString *feels_like;
@property (nonatomic, copy) NSString *pressure;
@property (nonatomic, copy) NSString *humidity;
@property (nonatomic, copy) NSString *visibility;
@property (nonatomic, copy) NSString *wind_direction;




@end
