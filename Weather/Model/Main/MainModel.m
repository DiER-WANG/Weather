//
//  MainModel.m
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "MainModel.h"

@implementation MainModel

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{@"tempMin" : @"temp_min",
             @"tempMax" : @"temp_max"
             };
}

@end
