//
//  DYDeviceManager.h
//  MYDYHelper
//
//  Created by apple on 2020/7/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYDeviceManager : NSObject
@property (nonatomic, strong) NSString *version;
@property (nonatomic, strong) NSString *openudid;
@property (nonatomic, strong) NSUUID *idfa;
@property (nonatomic, strong) NSUUID *idfv;
@property (nonatomic, copy) NSString * BSSID;
@property (nonatomic, copy) NSString * SSID;

@property (nonatomic, copy) NSString * TotalDiskSize;
@property (nonatomic, copy) NSString * batteryLevel;
@property (nonatomic, copy) NSString * iphone_version;
@property (nonatomic, copy) NSString * location;
@property (nonatomic, copy) NSString * platform;
@property (nonatomic, copy) NSString * timestamp;
@property (nonatomic, copy) NSString * usedMemory;
@property (nonatomic, copy) NSString * user_name;

@property (nonatomic, strong) NSString *city;

+(instancetype)sharedQueue;
@end

NS_ASSUME_NONNULL_END
