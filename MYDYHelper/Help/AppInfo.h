//
//  AppInfo.h
//  test
//
//  Created by 罗文 on 2019/9/18.
//  Copyright © 2019 RoWen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppInfo : NSObject<NSCopying>
+ (NSString*)getCurrentLocalIP;
+ (NSString *)getDeviceName;
+ (NSString *)getCurreWiFiName ;
+ (NSString *)getCurreBSSID ;
- (NSString *)getOpenudid ;
- (NSDictionary *)getIPAddr;
//- (NSString *)getMacAddress;
//- (NSString *) macaddress;

@property (nonatomic,strong)NSData *da;
//getIPAddr
@end



NS_ASSUME_NONNULL_END
