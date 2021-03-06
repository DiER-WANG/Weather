//
//  SysModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SysModel : NSObject

@property (nonatomic, assign)   NSInteger   type;
@property (nonatomic, assign)   NSInteger   sid;

/**
 System parameter, do not use it
 */
@property (nonatomic, assign)   float       message;

/**
 Country code (GB, JP etc.)
 */
@property (nonatomic, copy)     NSString    *country;

/**
 Sunrise time
 */
@property (nonatomic, assign) NSTimeInterval  sunrise;

/**
 Sunset time
 */
@property (nonatomic, assign) NSTimeInterval  sunset;

@end
