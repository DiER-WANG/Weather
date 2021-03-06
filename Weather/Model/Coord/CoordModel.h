//
//  CoordModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoordModel : NSObject

/**
 City geo location, longitude
 */
@property (nonatomic, assign) float  lon;

/**
 City geo location, latitude
 */
@property (nonatomic, assign) float  lat;

@end
