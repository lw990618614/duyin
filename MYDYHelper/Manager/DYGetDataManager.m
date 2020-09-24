//
//  DYGetDataManager.m
//  MYDYHelper
//
//  Created by apple on 2020/9/1.
//

#import "DYGetDataManager.h"
#import <PTFakeTouch/PTFakeTouch.h>

@implementation DYGetDataManager
+(instancetype)sharedQueue
{
    static DYGetDataManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYGetDataManager alloc] init];
        queue.dataArray= [NSMutableArray new];
    });
    return queue;
}

-(void)searchTheTargetUserWithDouyinID:(NSString *)douyinID{
    WEAKSELF;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH - 25;
        int locationY =30;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        //        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //        [pasteboard setString:douyinID];
        //        [weakSelf userSomeActionToTapWithDouyinID:douyinID];
        [weakSelf performSelector:@selector(longTapActionToTapWithDouyinID:) withObject:nil afterDelay:3];
    });
}

-(void)longTapActionToTapWithDouyinID:(NSString *)douyinID{
    WEAKSELF;
    int locationX =287 ;
    int locationY =120;
    
    NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
    [NSThread sleepForTimeInterval:0.5];
    
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
    [NSThread sleepForTimeInterval:0.5];
    
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =287 ;
        int locationY =110;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:0.5];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.5];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
        //        [weakSelf improtTheDouYinIDToTextView:douyinID];
        //        [weakSelf performSelector:@selector(improtTheDouYinIDToTextView:) withObject:nil afterDelay:5];
        
        [weakSelf tapTheFootView:douyinID];
        
    });
    
}

-(void)tapTheFootView:(NSString *)douyinID{
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH *0.5 ;
        int locationY =391;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:0.5];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.5];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
        //        [weakSelf improtTheDouYinIDToTextView:douyinID];
        //        [weakSelf performSelector:@selector(improtTheDouYinIDToTextView:) withObject:nil afterDelay:5];
        
        
    });
    
}

-(void)configDataWithDic:(NSMutableDictionary *)data{
    
                NSDate *senddate = [NSDate date];
    
                NSString *date2 = [NSString stringWithFormat:@"%ld", (long)[senddate timeIntervalSince1970]];
    
                NSString *plistPath = [[WHCFileManager homeDir] stringByAppendingPathComponent:@"test.plist"];
    
                NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
                if (!dataDictionary){
                    dataDictionary = [NSMutableDictionary new];
                }
                [dataDictionary setObject:data forKey:date2];
                BOOL resylt = [dataDictionary writeToFile:plistPath atomically:YES];
                if (resylt) {
                        NSLog(@"eeeeeeee  001%@" , plistPath);
    
                }else{
                    NSLog(@"eeeeeeee  002%@",plistPath);
                }
    
    //        [[SocketManager sharedQueue] sendMessageAction:block_arg2];
    
    
    data[@"class"] = @"report";
    data[@"app"] = @"douyin";
    data[@"method"] = @"acquisition_task";
    [[SocketManager sharedQueue] sendMessageAction:data];

}

-(void)searchTheTargetUserWithUserID:(NSString *)userID{
    if (self.dataArray.count) {
        [self.dataArray removeObjectAtIndex:0];
    }

    NSDictionary *dict =[[NSDictionary alloc]initWithObjectsAndKeys:userID,@"UserID", nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationUserCenterRecived object:nil userInfo:dict];
    
    [self performSelector:@selector(dimissTheView) withObject:nil afterDelay:3.5];
    
    NSLog(@"dimiss2222");
}


-(void)dimissTheView{
    UINavigationController *nav =(UINavigationController*)[[self viewController] navigationController];
    [nav popViewControllerAnimated:YES];
    NSLog(@"dimiss3333");
    
    if (self.dataArray.count) {
        NSDictionary *user =self.dataArray[0];
        [self searchTheTargetUserWithUserID:user[@"user"][@"id_str"]];
        [self performSelector:@selector(dimissTheView) withObject:nil afterDelay:3.5];

    }

}


@end
