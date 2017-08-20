//
//  WindModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WindModel : NSObject

/**
 Wind speed
 */
@property (nonatomic, assign) NSInteger  speed;

/**
 Wind direction
 */
@property (nonatomic, assign) NSInteger  deg;

@end
