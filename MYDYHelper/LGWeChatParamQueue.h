//
//  LGWeChatParamQueue.h
//  WeChatHB
//
//  Created by H on 2019/12/4.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "DYDeviceModel.h"
#import "UserAccount.h"
#import "MJExtension.h"

//
NS_ASSUME_NONNULL_BEGIN

@interface LGWeChatParamQueue : NSObject

@property (nonatomic, strong) UILabel *deviceLabel;


@property (nonatomic, strong) NSMutableArray *queue;


@property (nonatomic, strong) NSTimer *connectTimer;


+(instancetype)sharedQueue;
-(void)enqueue:(NSMutableDictionary *)param;
-(NSMutableDictionary *)dequeue;
-(void)resetDeviceAndTask;


//各种清理
-(void)clearCookies;
-(void)clearBoudleContainer:(NSString *)stringPath;
- (void)clearUserDefaults;
-(void)clearSandBox;
-(void)clearKeyChain;
-(void)clearPastBoard;
-(void)getQueaAndTask;

//上传各种信息
-(void)upTheCookie;
-(void)delayUpCookieToSevers;

//执行相关任务
-(void)delaybecomeFirstRespond;
-(void)updateInterfaceInfo:(id)info;




-(void)andTheDeviceNumberToKeyWindow;

//标记正在做任务
- (void)task_isDoing;

//延时做任务
- (void)delyStartTheTask;

//设置douyin任务
-(void)resetDouyinTask;

//设置设备信息
- (void)resetDoyinDevice;




@end


NS_ASSUME_NONNULL_END
