//
//  DYFollowManager.h
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYFollowManager : NSObject

+(instancetype)sharedQueue;
@property (nonatomic, copy) NSString  *douYinID;

-(void)searchTheTargetUserWithDouyinID:(NSString *)douyinID;

-(void)searchTheTargetUserWithUserID:(NSString *)userID;
-(void)followTheUserWithAction;

-(void)finishTaskAction;
@end

NS_ASSUME_NONNULL_END
