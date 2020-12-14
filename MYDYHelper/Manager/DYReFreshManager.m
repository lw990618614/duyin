//
//  DYReFreshManager.m
//  MYDYHelper
//
//  Created by apple on 2020/12/9.
//

#import "DYReFreshManager.h"

@implementation DYReFreshManager
+(instancetype)sharedQueue
{
    static DYReFreshManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYReFreshManager alloc] init];
    });
    return queue;
}


-(void)clickTheCenter{
    WEAKSELF;
    [self touchesWithPoint:CGPointMake(SCREEN_WIDTH *0.5, 430)];
    
    [self performSelector:@selector(justUpThemovie) withObject:nil afterDelay:5];


}


-(void)justUpThemovie{
    
    int arcradom =(arc4random() % 20);
    int locationX =100 +  arcradom;
    int locationY =200 +  arcradom;
    WEAKSELF;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [ZSFakeTouch beginTouchWithPoint:CGPointMake(locationX,locationY)];
        [ZSFakeTouch moveTouchWithPoint:CGPointMake(locationX,locationX)];
        [ZSFakeTouch endTouchWithPoint:CGPointMake(locationX,locationX)];
        [weakSelf performSelector:@selector(justUpThemovie) withObject:nil afterDelay:3];
    });

}

-(void)touchesWithPoint:(CGPoint)zspoint{
    [ZSFakeTouch beginTouchWithPoint:zspoint];
    [ZSFakeTouch endTouchWithPoint:zspoint];
}

@end
