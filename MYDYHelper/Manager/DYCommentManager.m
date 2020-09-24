//
//  DYCommentManager.m
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import "DYCommentManager.h"
#import <PTFakeTouch/PTFakeTouch.h>

@implementation DYCommentManager
+(instancetype)sharedQueue
{
    
    static DYCommentManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYCommentManager alloc] init];
    });
    return queue;
}

-(void)getCommentsListForTheMovieWithAction{
    
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      int locationX =SCREEN_WIDTH -25;
      int locationY =SCREEN_HEIGHT *0.5 + 64;
       NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
        [weakSelf goToCommentsWithTapAction];

    });
    

}

-(void)goToCommentsWithTapAction{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      int locationX =SCREEN_WIDTH *0.3;
      int locationY =SCREEN_HEIGHT  -30;

       NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
      [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
      [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [NSThread sleepForTimeInterval:0.5];

        [self tapTheSpaceToImportComment];

    });
}

//设置评论内容
-(void)tapTheSpaceToImportComment{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
          int middleX =SCREEN_WIDTH *0.6;
          int middleY =SCREEN_HEIGHT  -20;
          NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(middleX, middleY) withTouchPhase:(UITouchPhaseBegan)];
          [NSThread sleepForTimeInterval:0.3];
          [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(middleX, middleY) withTouchPhase:(UITouchPhaseMoved)];
          [NSThread sleepForTimeInterval:0.3];
          [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(middleX, middleY) withTouchPhase:(UITouchPhaseEnded)];
        NSString *content = [DYTaskManager sharedQueue].model.content;
          NSDictionary *dict = @{@"key":content};
          [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationCommentsRecived object:nil userInfo:dict];
        [self tapTheCommentViewToSendComment];
        
        });

}

//点击发送
-(void)tapTheCommentViewToSendComment{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      int locationX =SCREEN_WIDTH -15;
      int locationY =SCREEN_HEIGHT -15;
       NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [self performSelector:@selector(commentsActionDidFinish) withObject:nil afterDelay:1];
    });
}

-(void)commentsActionDidFinish{
    [DYCommonApi TaskDidFinishWithError:@""];
}


-(void)tapTheShareViewToEnterTheMovieViewAndComment{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =190;;
        int locationY =200;
          NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
          [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
          [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        [self performSelector:@selector(getCommentsListForTheMovieWithAction) withObject:nil afterDelay:2];

        });

}



@end
