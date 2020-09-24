//
//  DYFollowManager.m
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import "DYFollowManager.h"
#import <PTFakeTouch/PTFakeTouch.h>

@implementation DYFollowManager
+(instancetype)sharedQueue
{
    
    static DYFollowManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYFollowManager alloc] init];
    });
    return queue;
}

-(void)searchTheTargetUserWithUserID:(NSString *)userID{
    
    NSDictionary *dict =[[NSDictionary alloc]initWithObjectsAndKeys:userID,@"UserID", nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationUserCenterRecived object:nil userInfo:dict];
    
    [self followTheUserWithAction];
}

-(void)followTheUserWithAction{
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH *0.5;
        int locationY =150;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
        [weakSelf performSelector:@selector(finishTaskAction) withObject:nil afterDelay:6];

    });
    
}

-(void)searchTheTargetUserWithDouyinID:(NSString *)douyinID{
    WEAKSELF;

    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KeyboardDidPlasted"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH - 25;
        int locationY =30;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
//        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
//        [pasteboard setString:douyinID];
        self.douYinID =douyinID;
        //        [weakSelf userSomeActionToTapWithDouyinID:douyinID];
        [weakSelf performSelector:@selector(longTapActionToTapWithDouyinID:) withObject:nil afterDelay:3];
    });
    
}

//长按
-(void)longTapActionToTapWithDouyinID:(NSString *)douyinID{
    WEAKSELF;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =81 ;
        int locationY =34;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:0.5];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.5];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
        //        [weakSelf improtTheDouYinIDToTextView:douyinID];
        [weakSelf performSelector:@selector(improtTheDouYinIDToTextView:) withObject:nil afterDelay:5];
        
        //        [weakSelf userSomeActionToTapWithDouyinID:douyinID];
        
    });
    
}

//模拟输入
-(void)improtTheDouYinIDToTextView:(NSString *)douyinID{
    WEAKSELF;
    
    [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"KeyboardDidPlasted"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //        int locationX =70;
        //        int locationY =69;
        //
        //        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        //        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        //        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [weakSelf performSelector:@selector(searchTheDouYinIDToForTextView:) withObject:nil afterDelay:1];
        NSDictionary *dict =[[NSDictionary alloc]initWithObjectsAndKeys:self.douYinID,@"key", nil];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationDidTapPlastBoard object:nil userInfo:dict];
    });
    
}

//点击键盘搜索
-(void)searchTheDouYinIDToForTextView:(NSString *)douyinID{
//    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KeyboardDidPlasted"];
    
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH - 15;
        int locationY =SCREEN_HEIGHT - 10;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [weakSelf performSelector:@selector(tapTheSearchUserView) withObject:nil afterDelay:5];
        
    });
    
}


//点击用户搜索
-(void)tapTheSearchUserView{
//    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KeyboardDidPlasted"];
    
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =140;
        int locationY =70;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [weakSelf performSelector:@selector(tapTheSearchResult) withObject:nil afterDelay:5];
        
    });
    
}

//点击搜索结果
-(void)tapTheSearchResult{
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =110;
        int locationY =200;
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [weakSelf followTheUserWithAction];
//        [self performSelector:@selector(finishTaskAction) withObject:nil afterDelay:1];
    });
    
}


-(void)finishTaskAction{
    [DYCommonApi TaskDidFinishWithError:@""];
}


@end
