//
//  Manager.h
//  Manager和JSONModel
//
//  Created by 张佳乔 on 2021/10/11.
//

#import <Foundation/Foundation.h>
#import "GetModel.h"

//创建两个Block块，便于获取成功后返回数据
typedef void (^GetModelBlock)(GetModel * _Nullable mainModel);//返回GetModel类型的数据，GetModelBlock是该Block的名字
typedef void (^ErrorBlock)(NSError * _Nullable error);//返回NSError类型的数据，ErrorBlock是该Block的名字，失败会返回该Block

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject

//方便其他参数获取该单例
+ (instancetype)shareManager;
//封装网络请求的函数,Block会通过该函数返回网络请求获取到的参数
- (void)NetWorkGetWithData:(GetModelBlock)mainModelBolck andError:(ErrorBlock)errorBlock;

@end

NS_ASSUME_NONNULL_END
