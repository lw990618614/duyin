//
//  DYCommonApi.m
//  MYDYHelper
//
//  Created by apple on 2020/6/22.
//

#import "DYCommonApi.h"

@implementation DYCommonApi

+(void)GetTaskFromPlist{
    
}

+(void)letChupengStarToWork{
//    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
//
//    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//    [dataDictionary setObject:@"1" forKey:@"chupengCanStart"];
//    [dataDictionary setObject:@"1" forKey:@"chupengType"];
//    BOOL  result =  [dataDictionary writeToFile:plistPath atomically:YES];
//    if (!result) {
//        NSLog(@"EEEEEEEEEEEEE");
//    }else{
//        NSLog(@"Yyyyyyyy");
//        
//    }
}

+(void)TaskDidFinishWithError:(NSString *)errorNumber{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    [dataDictionary setObject:@"1" forKey:@"TaskResult"];
    if (errorNumber.intValue) {
        [dataDictionary setObject:errorNumber forKey:@"TaskResultError"];
    }
    BOOL  resut =   [dataDictionary writeToFile:plistPath atomically:YES];
      NSLog(@"TaskDidFinishWithError %d",resut);
      Class LSApplicationWorkspace_class = objc_getClass("LSApplicationWorkspace");
      
      NSObject * workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
      [workspace performSelector:@selector(openApplicationWithBundleID:) withObject:@"com.lby.AngelClient"];
 
    [self progranExit];
}

+(void)progranExit{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;

    [UIView animateWithDuration:1.0f animations:^{

    window.alpha = 0;

     window.frame = CGRectMake(0, window.bounds.size.width, 0, 0);

    } completion:^(BOOL finished) {
        
        abort();
//     exit(1);

    }];
}

-(void)setTheTaskStatus{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    [dataDictionary setObject:@"1" forKey:@"Task_api_status"];
    [dataDictionary writeToFile:plistPath atomically:YES];
}

+(UIWindow *)topLevelWindowGet{
    
    UIWindow *topView = [UIApplication sharedApplication].keyWindow;
    
    for (UIWindow *win in [[UIApplication sharedApplication].windows  reverseObjectEnumerator]) {
        
        if ([win isEqual: topView]) {
            continue;
        }
        if (win.windowLevel > topView.windowLevel && win.hidden != YES ) {
            topView =win;
        }
    }
    return topView;
}


@end


