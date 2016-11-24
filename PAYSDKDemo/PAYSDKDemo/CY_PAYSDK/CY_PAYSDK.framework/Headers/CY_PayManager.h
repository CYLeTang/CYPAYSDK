//
//  CY_PayManager.h
//  PaySDK1
//
//  Created by 李聪聪 on 16/11/17.
//  Copyright © 2016年 李聪聪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface CY_PayManager : NSObject

//支付Appid(required)
@property(nonatomic,copy)NSString* Appid;
//支付AppSecret(required)
@property(nonatomic,copy)NSString* AppSecret;
//订单金额(required)
@property(nonatomic,copy)NSString* OrderAtm;
//订单名称
@property(nonatomic,copy)NSString* OrderName;
//订单详情
@property(nonatomic,copy)NSString* OrderDetail;
//是否支持苹果支付(optional)
//default NO
@property(nonatomic,assign)NSString* AppPayProductId;


+ (instancetype)defaultManager;
- (void)Pay;
@end
