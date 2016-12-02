# Introduction
This CYPAYSDK SDK for iOS provides a framework for iOS developers to develop pay with weixin and alipay. 

It currently supports iOS 7 later

# How To Get Started
Download CYPAYSDK and try out the included iPhone or Ipad example apps<br>
Read the "CYPAYSDK文档" guide, or other articles on the Wiki <br>
Check out the documentation for a comprehensive look at all of the APIs available in CYPAYSDK<br>

# Support framework
AdSupport.framework、StoreKit.framework（optional）

#Guide
1、In the project, click the right mouse button，and choice "add File to **" <br>
2、Configuration info.plist "App Transport Security Settings"->"Allow Arbitrary Loads = YES" <br>
3、update "Other Linker Flags"->"-ObjC" <br>
4、set "LSApplicationQueriesSchemes"->"weixin,alipay" <br>
5、#import "CY_PayManager.h" <br>
6、other detail check guide

#版本升级
1.4<br>
修正微信支付成功详情界面<br>
删除订单名称,订单金额等信息<br>
订单状态与订单详情不在返回界面中显示(如需显示，由CP自行完成)
