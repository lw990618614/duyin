//
//  DYFeedManager.h
//  MYDYHelper
//
//  Created by apple on 2020/6/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYFeedManager : NSObject
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) NSInteger times;
@property (nonatomic, assign) NSInteger noDatatimes;
@property (nonatomic, assign) NSInteger finishTime;
@property (nonatomic, assign) BOOL firstGetData;

+(instancetype)sharedQueue;
- (void)feedTaskDidFinsh;
- (void)feedTaskStart;
-(void)arcradomToSetUserAction;


@end

NS_ASSUME_NONNULL_END
