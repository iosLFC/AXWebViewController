//
//  CMJsonObject.h
//  彩猫体育
//
//  Created by Jay on 16/6/7.
//  Copyright © 2016年 fcaimao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

//首先创建一个实现了JSExport协议的协议
@protocol CMJSObjectProtocol <JSExport>

//此处我们测试几种参数的情况
- (NSString *)getClientUserSession;
- (NSString *)getRequestType;
- (NSString *)getVersion;
- (NSString *)getAppName;
- (NSString *)getUserToken;
- (NSString *)getAccessId;
- (NSString *)getSourceName;
- (BOOL)openUrl;
- (void)goToMatchDetail;
- (BOOL)goToLogin;
- (void)setShareData;
- (void)setShareShaishai;
- (void)lotteryRecommend;
- (void)feedback;
@end

@interface CMJSObject : NSObject<CMJSObjectProtocol>

@end
