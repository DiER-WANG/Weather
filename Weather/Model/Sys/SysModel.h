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
@property (nonatomic, assign)   float       message;
@property (nonatomic, copy)     NSString    *country;

@property (nonatomic, assign) NSTimeInterval  sunrise;
@property (nonatomic, assign) NSTimeInterval  sunset;

@end
