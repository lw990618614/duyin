//
//  DYLiveManager.m
//  MYDYHelper
//
//  Created by apple on 2020/7/30.
//

#import "DYLiveManager.h"

@implementation DYLiveManager
+(instancetype)sharedQueue
{
    static DYLiveManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYLiveManager alloc] init];
    });
    return queue;
}


- (void)upTheLiveConmentsInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];
}
- (void)upTheLiveGiftInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}
- (void)upTheLiveUserEnterRoomInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}
- (void)upTheLiveUserBuyActionInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}
- (void)upTheLiveProductsListInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}
- (void)upTheLiveXiaodianDetailProductInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}
- (void)upTheLiveGiftBangInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}
- (void)upTheLiveUserOnlineInfoToseversWithContent:(NSDictionary *)sender{
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"liveType"] = @"1";
    dic[@"liveContent"] =sender;
    [[SocketManager sharedQueue] sendMessageAction:sender];

}

@end
