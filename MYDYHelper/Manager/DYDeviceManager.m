//
//  DYDeviceManager.m
//  MYDYHelper
//
//  Created by apple on 2020/7/3.
//

#import "DYDeviceManager.h"

@implementation DYDeviceManager
+(instancetype)sharedQueue
{
    static DYDeviceManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYDeviceManager alloc] init];
    });
    return queue;
}

@end
