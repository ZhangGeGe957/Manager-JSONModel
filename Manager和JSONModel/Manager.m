//
//  Manager.m
//  Manager和JSONModel
//
//  Created by 张佳乔 on 2021/10/11.
//

#import "Manager.h"

//创建一个单例
static Manager *manager = nil;

@implementation Manager

+ (instancetype)shareManager {
    if (!manager) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            manager = [[Manager alloc] init];
        });
    }
    return manager;
}

- (void)NetWorkGetWithData:(GetModelBlock)mainModelBolck andError:(ErrorBlock)errorBlock {
    NSString *json = @"https://news-at.zhihu.com/api/4/news/latest";
    json = [json stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *netWorkDataURL = [NSURL URLWithString:json];
    NSURLRequest *netWorkDataRequest = [NSURLRequest requestWithURL:netWorkDataURL];
    NSURLSession *netWorkDataSession = [NSURLSession sharedSession];
    NSURLSessionDataTask *netWorkDataTask = [netWorkDataSession dataTaskWithRequest:netWorkDataRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil) {
            GetModel *allGetData = [[GetModel alloc] initWithData:data error:nil];
            mainModelBolck(allGetData);
        } else {
            errorBlock(error);
        }
    }];
    [netWorkDataTask resume];
}

@end
