//
//  ViewController.m
//  Manager和JSONModel
//
//  Created by 张佳乔 on 2021/10/11.
//

#import "ViewController.h"
#import "Manager.h"
#import "GetModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self getModel];
}

- (void)getModel {
    [[Manager shareManager] NetWorkGetWithData:^(GetModel * _Nullable mainModel) {
        NSLog(@"%@", mainModel.stories[0]);
        NSLog(@"获取成功");
    } andError:^(NSError * _Nullable error) {
        NSLog(@"请求失败");
    }];
}


@end
