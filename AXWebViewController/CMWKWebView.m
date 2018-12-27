//
//  CMWKWebView.m
//  LotteryShopClient
//
//  Created by lfc on 2018/12/27.
//  Copyright © 2018年 lfc. All rights reserved.
//

#import "CMWKWebView.h"
#import "CMJSObject.h"
#import <JavaScriptCore/JavaScriptCore.h>
@implementation CMWKWebView

-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    
    if(self) {
        JSContext *context = [self valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
        CMJSObject *JO = [CMJSObject new];
        context[@"caimaoApp"] = JO;
    }
    return self;
}

@end
