//
//  DYLikeManager.m
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import "DYLikeManager.h"
//#import "SimulateTouch.h"
#import <PTFakeTouch/PTFakeTouch.h>

@implementation DYLikeManager
+(instancetype)sharedQueue
{
    static DYLikeManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYLikeManager alloc] init];
    });
    return queue;
}

-(void)likeTheMovieWithAction{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =SCREEN_WIDTH - 25;;
        int locationY =SCREEN_HEIGHT *0.5;
      NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
//      [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
//      [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
        
        [self performSelector:@selector(likeActionDidFinish) withObject:nil afterDelay:3];
    });

}

-(void)likeActionDidFinish{
    [DYCommonApi TaskDidFinishWithError:@""];
}


-(void)tapTheShareViewToEnterTheheMovieView{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int locationX =190;;
        int locationY =200;
        
        NSLog(@"tapTheShareViewToEnterTheheMovieView");

          NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
          [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
          [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];

            [self performSelector:@selector(likeTheMovieWithAction) withObject:nil afterDelay:3];
        });

}

@end
