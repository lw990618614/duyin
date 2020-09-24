//
//  DYLiveManager.h
//  MYDYHelper
//
//  Created by apple on 2020/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYLiveManager : NSObject
+(instancetype)sharedQueue;
- (void)upTheLiveConmentsInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveGiftInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveUserEnterRoomInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveUserBuyActionInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveProductsListInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveXiaodianDetailProductInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveGiftBangInfoToseversWithContent:(NSDictionary *)sender;
- (void)upTheLiveUserOnlineInfoToseversWithContent:(NSDictionary *)sender;

@end

NS_ASSUME_NONNULL_END
