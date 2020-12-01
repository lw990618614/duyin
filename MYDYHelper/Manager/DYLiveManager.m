//
//  DYLiveManager.m
//  MYDYHelper
//
//  Created by apple on 2020/7/30.
//

#import "DYLiveManager.h"
#import <PTFakeTouch/PTFakeTouch.h>
@interface DYLiveManager()
@property (nonatomic,assign )NSInteger  index;

@end

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

-(void)clickAllOnLineItem{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =165;
        int locationY =556;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];

    });

}

-(void)clickTheOnlineItmeButton{
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
           int locationX =SCREEN_WIDTH *0.49;
           int locationY =291;

           NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
           [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
           [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
       });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH *0.49;
        int locationY =291;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];


    });
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(12 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH  - 40;
        int locationY =35;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        NSLog(@"sssss  搜索返回");
        [weakSelf performSelector:@selector(configData) withObject:nil afterDelay:12];


    });


}

-(void)getOnLineUser{
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH  - 40;
        int locationY =35;
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [weakSelf performSelector:@selector(clickTheOnlineItmeButton) withObject:nil afterDelay:3];
    });

}

-(void)configData{
    if (!self.dataArray.count) {
        [[DYFeedManager sharedQueue] arcradomToSetUserAction];
    }else{
        NSLog(@"sssss  开始了模拟");

        [self getOnLineData];
    }
}

-(void)setOnlineData:(NSDictionary *)onlineData{
    _onlineData = onlineData;
    NSArray *dataArray = self.onlineData[@"data"][@"ranks"];
    NSLog(@"sssss 开始了 %d",dataArray.count);
    self.dataArray = dataArray;

}

-(void)getOnLineData{
    

    if (self.dataArray.count) {
        [self chooseGetOnlineInfoOrOnlyUp];
    }else{
        NSLog(@"sssss  未获得数据");
        [[DYFeedManager sharedQueue] arcradomToSetUserAction];
    }
}


-(void)pushTheDetailViewWithIndex:(NSInteger)index{
    if (self.dataArray.count > index) {
        NSDictionary *user =self.dataArray[index];
        NSString *userID =   user[@"user"][@"id_str"];
        
        if (userID) {
            NSLog(@"sssss  跳转");
            
            NSDictionary *dict =[[NSDictionary alloc]initWithObjectsAndKeys:userID,@"UserID", nil];
            
            [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationUserCenterRecived object:nil userInfo:dict];
            
//            [self performSelector:@selector(gotoRootView) withObject:nil afterDelay:10];
            
            int arcradomX =  40 + (arc4random() % 20);
            int arcradomY =  50 + (arc4random() % 30);

            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                  

                  int locationX =100 +  arcradomX;
                  int locationY =200 +  arcradomY;
                  NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
                  [NSThread sleepForTimeInterval:0.1];
                  
                  [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX + 200, locationY) withTouchPhase:(UITouchPhaseMoved)];
                  [NSThread sleepForTimeInterval:0.1];
                  [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX + 200, locationY) withTouchPhase:(UITouchPhaseEnded)];
                  [self  performSelector:@selector(chooseGetOnlineInfoOrOnlyUp) withObject:nil afterDelay:1];
                  
              });
              
            
        }else{
            NSLog(@"sssss  没得");
            
        }

    }else{
        [DYCommonApi TaskDidFinishWithError:@""];
    }
}


-(void)chooseGetOnlineInfoOrOnlyUp{
        if ([DYVcManager sharedQueue].selectVc.selectedIndex != [DYVcManager sharedQueue].selectVc.titles.count -1) {
            [[DYVcManager sharedQueue].selectVc segmentedControlTapped:([DYVcManager sharedQueue].selectVc.titles.count-1)];
            NSLog(@"sssss  没得11");

            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                   [self  performSelector:@selector(chooseGetOnlineInfoOrOnlyUp) withObject:nil afterDelay:(arc4random() % 5 + 1)];
               });

            return;
            
        }else{
            
             UIViewController *vc = [DYCommonApi getCurrentVC];

            NSString  *re =   [[DYVcManager sharedQueue].selectVc compareCurrentVc:vc];

             if (![re isEqualToString:@"4"]) {
                 NSLog(@"sssss  没得22");

                    UINavigationController *nav =(UINavigationController*)[vc navigationController];
                    [nav popViewControllerAnimated:YES];
                    [nav dismissViewControllerAnimated:YES completion:nil];
                 
                 dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                        [self  performSelector:@selector(chooseGetOnlineInfoOrOnlyUp) withObject:nil afterDelay:(arc4random() % 5 + 1)];
                    });


                 return;
                }
            }


    int x = arc4random() % 30;
    
    if (x > 15) {
        NSLog(@"sssss 去获取直播用户数据");

        [self pushTheDetailViewWithIndex:self.index++];
        
    }else{
        int arcradom =  6 + (arc4random() % 5);
        NSLog(@"sssss 往上滑动 ");
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(arcradom * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [[DYTaskManager sharedQueue] hasLogined];
            int arcradom =(arc4random() % 20);
            int locationX =100 +  arcradom;
            int locationY =500 +  arcradom;
            NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
            [NSThread sleepForTimeInterval:0.2];
            
            [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
            [NSThread sleepForTimeInterval:0.2];
            [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
            [self performSelector:@selector(chooseGetOnlineInfoOrOnlyUp) withObject:nil afterDelay:3];
            
        });
        
        
    }
    
}

@end
