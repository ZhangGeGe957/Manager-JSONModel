//
//  GetModel.m
//  Manager和JSONModel
//
//  Created by 张佳乔 on 2021/10/11.
//

#import "GetModel.h"

@implementation storiesModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}
@end

@implementation top_storiesModel
+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}
@end

@implementation GetModel

+ (BOOL)propertyIsOptional:(NSString *)propertyName {
    return YES;
}

@end

//+ (BOOL)propertyIsOptional:(NSString *)propertyName 作用是不想因为服务器的某个值没有返回(nil)就使程序崩溃， 我们会加关键字Optional，如果不想每一条属性都添加，我们也可以在.m文件中重写方法
