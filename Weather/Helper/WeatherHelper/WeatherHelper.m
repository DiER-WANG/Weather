//
//  WeatherHelper.m
//  Weather
//
//  Created by 王昌阳 on 2017/8/20.
//  Copyright © 2017年 SSY. All rights reserved.
//

#import "WeatherHelper.h"


typedef NS_ENUM(NSInteger, Language) {
    LanguageArabic = 0,
    LanguageBulgarian,
    LanguageCatalan,
    LanguageCzech,
    LanguageGerman,
    LanguageGreek,
    LanguageEnglish,
    LanguagePersian,
    LanguageFinnish,
    LanguageFrench,
    LanguageGalician,
    LanguageCroatian,
    LanguageHungarian,
    LanguageItalian,
    
    LanguageJapanese,
    LanguageKorean,
    LanguageLatvian,
    LanguageLithuanian,
    LanguageMacedonian,
    LanguageDutch,
    LanguagePolish,
    LanguagePortuguese,
};

static WeatherHelper *singleton = nil;
@implementation WeatherHelper

+ (instancetype)sharedHelper {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[WeatherHelper alloc] init];
    });
    return singleton;
}

- (NSString *)getWeatherLanguage {
    return @"zh_cn";
}

- (NSString *)getWeatherUnit {
    return @"metric";
}


@end
