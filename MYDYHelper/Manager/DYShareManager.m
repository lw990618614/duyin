//
//  DYShareManager.m
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import "DYShareManager.h"
#import <PTFakeTouch/PTFakeTouch.h>

@implementation DYShareManager
+(instancetype)sharedQueue
{
    static DYShareManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYShareManager alloc] init];
    });
    return queue;
}

-(void)shareMovieWithAction{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      int locationX =SCREEN_WIDTH - 25;
      int locationY =SCREEN_HEIGHT *0.5 + 133;
       NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
      [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
      [NSThread sleepForTimeInterval:0.3];
      [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
     });
}

@end
