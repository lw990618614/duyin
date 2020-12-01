//
//  DYCommonApi.h
//  MYDYHelper
//
//  Created by apple on 2020/6/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYCommonApi : NSObject
+(void)letChupengStarToWork;
+(void)TaskDidFinishWithError:(NSString *)errorNumber;
+(UIWindow *)topLevelWindowGet;
//+(void)setTheTaskStatus;
+ (UIViewController *)getCurrentVC;


@end

NS_ASSUME_NONNULL_END
