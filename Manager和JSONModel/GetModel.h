//
//  GetModel.h
//  Manager和JSONModel
//
//  Created by 张佳乔 on 2021/10/11.
//

//声明网络请求中的要接收数据的两个协议
@protocol storiesModel
@end

@protocol top_storiesModel
@end

#import "JSONModel.h"

NS_ASSUME_NONNULL_BEGIN

//实现两个协议的父类，并继承它
@interface storiesModel : JSONModel
@property (nonatomic, copy) NSString *image_hue;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *url;
@property (nonatomic, copy) NSString *hint;
@property (nonatomic, copy) NSString *ga_prefix;
//@property (nonatomic, copy) NSString *images;//类型不同获取不到
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *id;
@end

@interface top_storiesModel : JSONModel
@property (nonatomic, copy) NSString *image_hue;
@property (nonatomic, copy) NSString *hint;
@property (nonatomic, copy) NSString *url;
//@property (nonatomic, copy) NSString *image;//类型不同获取不到
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *ga_prefix;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *id;
@end

//总声明，获取网络请求到的所有数据，有数组的话就同现在写的这两个一样
@interface GetModel : JSONModel

@property (nonatomic, copy) NSString *data;
//该数组相当一个二维的数组，每个单元都包涵你之前定义的数据
@property (nonatomic, copy) NSArray<storiesModel> *stories;
@property (nonatomic, copy) NSArray<top_storiesModel> *top_stories;

@end

NS_ASSUME_NONNULL_END
