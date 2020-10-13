//
//  DYVcManager.m
//  MYDYHelper
//
//  Created by apple on 2020/10/12.
//

#import "DYVcManager.h"

@implementation DYVcManager
+(instancetype)sharedQueue
{
    static DYVcManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYVcManager alloc] init];
    });
    return queue;
}

@end
