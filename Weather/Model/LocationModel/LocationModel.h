//
//  LocationModel.h
//  Weather
//
//  Created by 王昌阳 on 2017/8/9.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationModel : NSObject

@property (nonatomic, copy) NSString *lid;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *country;
@property (nonatomic, copy) NSString *timezone;
@property (nonatomic, copy) NSString *timezone_offset;

@end
