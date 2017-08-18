//
//  MainModel.h
//  Weather
//
//  Created by SSY on 2017/8/18.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainModel : NSObject

@property (nonatomic, assign) float  temp;
@property (nonatomic, assign) NSInteger  pressure;
@property (nonatomic, assign) NSInteger  humidity;
@property (nonatomic, assign) NSInteger  tempMin;
@property (nonatomic, assign) NSInteger  tempMax;

@end
