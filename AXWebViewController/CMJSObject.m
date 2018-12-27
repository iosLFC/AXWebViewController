//
//  CMJsonObject.m
//  彩猫体育
//
//  Created by Jay on 16/6/7.
//  Copyright © 2016年 fcaimao. All rights reserved.
//

#import "CMJSObject.h"

@implementation CMJSObject

//一下方法都是只是打了个log 等会看log 以及参数能对上就说明js调用了此处的iOS 原生方法
- (NSString *)getClientUserSession
{
    return [[UserManage shareUserManage] getUserSession];
}
- (NSString *)getRequestType
{
    return @"7";
}
- (NSString *)getVersion
{
    return [[UserManage shareUserManage] getVersion];
}
- (NSString *)getAppName
{
    return @"sport";
}
- (NSString *)getUserToken
{
    return [[UserManage shareUserManage] getUserToken];
}
- (NSString *)getAccessId
{
    return  [[UserManage shareUserManage] getUUID];
}
- (NSString *)getSourceName
{
    return [[UserManage shareUserManage] getQuDao];
}
- (BOOL)openUrl
{
    NSArray *args = [JSContext currentArguments];

    NSString *url = args[0];
    JSValue *js = args[1];
    BOOL fullSrceen = [js toBool];
    
    NSNumber *fullInt = [NSNumber numberWithBool:fullSrceen];
    
    NSDictionary *dict = @{@"url":url,@"fullSrceen":fullInt};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"WEBVIEW" object:nil userInfo:dict];
    
    return YES;
}

- (void)goToMatchDetail
{
    NSArray *args = [JSContext currentArguments];
    
    JSValue *mid = args[0];
    
    NSDictionary *dict = @{@"mid":mid};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MatchDetail" object:nil userInfo:dict];
}

- (BOOL)goToLogin
{
    NSArray *args = [JSContext currentArguments];
    
    JSValue *jscode = args[0];
    
    NSDictionary *dict = @{@"jscode":jscode};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Login" object:nil userInfo:dict];
    
    return YES;
}

- (void)setShareData
{
    NSArray *args = [JSContext currentArguments];
    
    NSDictionary *dict = @{@"args":args};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"setShareData" object:nil userInfo:dict];
}
- (void)setShareShaishai{
    NSArray *cmss = [JSContext currentArguments];
    
    NSDictionary *dict = @{@"cmss":cmss};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"setShareShaishai" object:nil userInfo:dict];
}

- (void)lotteryRecommend {
    NSArray *lotteryRecommend = [JSContext currentArguments];
    
    NSDictionary *dict = @{@"lotteryRecommend":lotteryRecommend};
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"lotteryRecommend" object:nil userInfo:dict];
}
- (void)feedback {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"feedback" object:nil userInfo:nil];
}
@end
