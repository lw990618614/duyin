//
//  LGWeChatParamQueue.m
//  WeChatHB
//
//  Created by H on 2019/12/4.
//

#import "LGWeChatParamQueue.h"
#import <objc/runtime.h>
#import <UIKit/UIPasteboard.h>
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <sqlite3.h>
#include <spawn.h>
#import <UIKit/UIPasteboard.h>
#include <dirent.h>
#include <ftw.h>
#import "WHCFileManager.h"
#import "AppInfo.h"
#import <PTFakeTouch/PTFakeTouch.h>


#include <substrate.h>
#import <sys/utsname.h>
#import <dlfcn.h>

#import "LGWeChatParamQueue.h"

#include <err.h>
#include <pwd.h>
#include <grp.h>
#include <sys/stat.h>
#include <sys/sysctl.h>
#include <fcntl.h>
#include <dirent.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <objc/message.h>

#define kBaseURL    @"http://app.yunxxpay.com/api/dy/getTask"//测试
extern char **environ;


@interface LGWeChatParamQueue ()
@property (nonatomic ,assign)NSInteger index;
@end

@implementation LGWeChatParamQueue

+(instancetype)sharedQueue
{
    
    static LGWeChatParamQueue * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[LGWeChatParamQueue alloc] init];
    });
    return queue;
}

//
//
-(instancetype)init
{
    if (self = [super init]) {
        _queue = [[NSMutableArray alloc] init];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(keyboardWillShow:)
                                                     name:UIKeyboardWillShowNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(keyboardWillHide:)
                                                     name:UIKeyboardDidHideNotification
                                                   object:nil];
        
        NSTimer *socketTimer = [NSTimer scheduledTimerWithTimeInterval:6 target:self selector:@selector(socketTimer) userInfo:nil repeats:YES];
        [[NSRunLoop mainRunLoop] addTimer:socketTimer forMode:NSRunLoopCommonModes];

    }
    return self;
}

- (void)socketTimer
{
    if ([SocketManager sharedQueue].connected) {
        [[SocketManager sharedQueue] longConnectToSocket];
    }else{
        [[SocketManager sharedQueue] connectAction];
    }
}


-(UILabel *)deviceLabel{
    if (_deviceLabel== nil) {
        _deviceLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, SCREEN_WIDTH, 40)];
        _deviceLabel.textColor = [UIColor blueColor];
        _deviceLabel.font  =[UIFont boldSystemFontOfSize:35];
        _deviceLabel.text = @"";
    }
    return _deviceLabel;;
}

-(void)andTheDeviceNumberToKeyWindow{
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    NSString *documentsPath = kTaskFilePath;
    NSString *plistPath = [documentsPath stringByAppendingPathComponent:@"MY_Identiferi.plist"];
    BOOL isExit  = [WHCFileManager isExistsAtPath:plistPath];
    if (!isExit) {
    }else{
        NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
        self.deviceLabel.text =dataDictionary[@"deViceType"];
        [keyWindow addSubview:self.deviceLabel];
    }

}

-(void)enqueue:(NSMutableDictionary *)param
{
    [self.queue addObject:param];
    
}

-(NSMutableDictionary *)dequeue
{
    if (0 == self.queue.count && !self.queue.firstObject) {
        return nil;
    }
    NSMutableDictionary * first = self.queue.firstObject;
    [self.queue removeObjectAtIndex:0];//干掉里面的数据!
    return first;
}


- (void)keyboardWillShow:(NSNotification *)notify {//键盘弹起改变TextView位置
    
    //拿到键盘尺寸
    CGRect rect = [notify.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    //取得键盘高度
    NSString *height = [NSString stringWithFormat:@"%f",rect.size.height];
    NSString *wight = [NSString stringWithFormat:@"%f",rect.size.width];
    NSString *maxY = [NSString stringWithFormat:@"%f",rect.origin.y];
    //    #define kKeyboardHeight @"KeyboardHeight"
    //    #define kKeyboardY @"KeyboardY"
    [[NSUserDefaults standardUserDefaults] setObject:height forKey:@"KeyboardHeight"];
    [[NSUserDefaults standardUserDefaults] setObject:wight forKey:@"KeyboardHWight"];
    [[NSUserDefaults standardUserDefaults] setObject:maxY forKey:@"KeyboardY"];
    [[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"KeyboardDidShow"];
    //TextView的y = 整个屏幕高度 - 键盘高度 - TextView的高度
}

- (void)keyboardWillHide:(NSNotification *)notification {//键盘回收改变TextView的位置
    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KeyboardDidShow"];
}

-(NSTimer *)connectTimer{
    if (!_connectTimer) {
        __weak typeof(self) weakSelf = self;
        int arcradom =  5 + (arc4random() % 20);
        _connectTimer = [NSTimer fy_timerWithTimeInterval:arcradom actionBlock:^(NSTimer *timer) {
            [weakSelf longConnectToSocket];
        } runLoopMode:NSRunLoopCommonModes repeats:YES];
    }
    return _connectTimer;
}

-(void)longConnectToSocket{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    //    if ([dataDictionary[@"chupengIsFinish"] intValue] == 1) {
    //            if(task_id.intValue == 30001){
    //
    //            }else if(task_id.intValue == 40001){
    //
    //            }else if(task_id.intValue == 50001){
    //
    //            }
    //            else if(task_id.intValue == 60001){
    //
    //            }
    //            else if(task_id.intValue == 70001){
    ////                [[DYFeedManager sharedQueue] feedTaskDidFinsh];
    //            }
    //            else if(task_id.intValue == 80001){
    //
    //            }
    //            else if(task_id.intValue == 90001){
    //
    //            }
    //    }
    
}

-(void)resetDoyinDevice{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kDevicePlist];
    if ([WHCFileManager isExistsAtPath:plistPath]) {
        NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
        DYDeviceModel *model =[DYDeviceModel mj_objectWithKeyValues:dictionary];
        
        NSLog(@"plistPath = %@",plistPath);
        if (model.idfa&&model.idfv) {
            DYDeviceManager *manager = [DYDeviceManager sharedQueue];
            manager.openudid = model.openudid;
            manager.version =[NSString stringWithFormat:@"%.1f",[model.iphone_version floatValue]] ;
            manager.user_name = model.user_name;
            NSUUID *idfauuid = [[NSUUID alloc] initWithUUIDString:model.idfa] ;
            NSUUID *idfvuuid = [[NSUUID alloc] initWithUUIDString:model.idfv] ;
            manager.idfa = idfauuid;
            manager.idfv = idfvuuid;
            manager.BSSID = model.BSSID;
            manager.SSID = model.SSID;
            manager.batteryLevel = model.batteryLevel;
            manager.platform = model.platform;
            manager.TotalDiskSize = model.TotalDiskSize;
            manager.usedMemory = model.usedMemory;
            manager.location = model.location;
            manager.openudid = model.openudid;
            manager.iphone_version = [NSString stringWithFormat:@"%.1f",[model.iphone_version floatValue]];
        }else{
            NSLog(@"无法找到抖音设备型号 不可启动抖音");
            exit(0);
        }
        
    }
}

//设置douyin任务
-(void)resetDouyinTask{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    if ([WHCFileManager isExistsAtPath:plistPath]) {
        NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
        NSString *task_id = dictionary[@"task_id"];
        DYTaskModel *model =[DYTaskModel mj_objectWithKeyValues:dictionary];
        [DYTaskManager sharedQueue].model =model;
        if(task_id.intValue == 10001){
            UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            [pasteboard setString:model.url];
        }else if(task_id.intValue == 20001){
            [self clearPastBoard];
        }else if(task_id.intValue == 30001){
            [self clearPastBoard];

        }else if(task_id.intValue == 40001){
            [self clearPastBoard];

        }else if(task_id.intValue == 50001){
            [self clearPastBoard];

        }else if(task_id.intValue == 60001){
            UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
            [pasteboard setString:model.url];
        }
        else if(task_id.intValue == 70001){
            [self clearPastBoard];

        }
        else if(task_id.intValue == 80001){
            [self clearPastBoard];

        }
        else if(task_id.intValue == 90001){
            [self clearPastBoard];
        }
        
    }
    
}

-(void)getQueaAndTask{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSDictionary *dict = @{
        @"username":@"Lion",
        @"pwd":@"1314",
        @"type":@"JSON"
    };
    
    [manager GET:kBaseURL parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"failure--%@",error);
    }];
    
    
}

- (void)delyStartTheTask{
    [self andTheDeviceNumberToKeyWindow];

    //    [[DYFeedManager sharedQueue] feedTaskStart];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //            [[DYFeedManager sharedQueue] feedTaskStart];
        //        [[DYFollowManager sharedQueue] searchTheTargetUserWithUserID:@"96245704530"];
        //            [[DYCommentManager sharedQueue] getCommentsListForTheMovieWithAction];
        //            [[DYFollowManager sharedQueue] searchTheTargetUserWithDouyinID:@"1611205981"];
        //
        //            [[DYLikeManager sharedQueue] olikeTheMovieWithAction];
        //
//        [[SocketManager sharedQueue] connectAction];

//        DYTaskModel *model = [DYTaskManager sharedQueue].model;
//        NSString *task_id = model.task_id;
//        if(task_id.intValue == 10001){
//
//        }else if(task_id.intValue == 20001){
//
//        }else if(task_id.intValue == 30001){
//            NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
//               NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
//               NSString *loginStep =  dataDictionary[@"step"];
//            if (loginStep.intValue == 0) {
//                NSLog(@"DYLoginManager  00 ");
//                [[DYLoginManager sharedQueue] p_timerAction];
//            }else if (loginStep.intValue == 1){
//                NSLog(@"DYLoginManager  11 ");
//                [[DYLoginManager sharedQueue] loginStepTwo];
//            }else if (loginStep.intValue == 2){
//                NSLog(@"DYLoginManager  22 ");
//                [[DYLoginManager sharedQueue] loginStepThree];
//            }
//
//        }else if(task_id.intValue == 40001){
//            [[DYFollowManager sharedQueue] searchTheTargetUserWithDouyinID:model.foreign_id];
//        }else if(task_id.intValue == 50001){
//
//        }else if(task_id.intValue == 60001){
//
//        }else if(task_id.intValue == 70001){
//            [[DYFeedManager sharedQueue] arcradomToSetUserAction];
//            [DYFeedManager sharedQueue].finishTime = model.task_time.intValue *60;
//        }else if(task_id.intValue == 80001){
//
//        }else if(task_id.intValue == 90001){
//
//        }
//
//        if (!model) {
//            [[DYFeedManager sharedQueue] arcradomToSetUserAction];
//        }
[[DYFeedManager sharedQueue] arcradomToSetUserAction];
        [DYFeedManager sharedQueue].finishTime = 60*60;
    });
    
}

/*------------------下发发账户相关任务------------------*/


-(void)delayUpCookieToSevers{
    [self  performSelector:@selector(upTheCookieWithTimes:) withObject:nil afterDelay:10];
}

-(void)upTheCookieWithTimes:(NSInteger)index{
}

-(void)delaybecomeFirstRespond{
    //exit(0);
    [self  performSelector:@selector(TagettextViewDidBeginEditing) withObject:nil afterDelay:2];
    
}

-(void)TagettextViewDidBeginEditing{
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(59, SCREEN_HEIGHT- 30) withTouchPhase:(UITouchPhaseBegan)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(59, SCREEN_HEIGHT- 30) withTouchPhase:(UITouchPhaseMoved)];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(59, SCREEN_HEIGHT- 30) withTouchPhase:(UITouchPhaseEnded)];
//        NSDictionary *dict = @{@"key":@"不得不点赞"};
//        [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationCommentsRecived object:nil userInfo:dict];
    //
}


/*------------------变机清空缓存------------------*/

-(void)clearCookies{
    NSHTTPCookieStorage *cookieStorage = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    NSArray *tempArray = [NSArray arrayWithArray:[cookieStorage cookies]];
    for (NSHTTPCookie *cookiej in tempArray) {
      [cookieStorage deleteCookie:cookiej];
    }
}

- (void)clearUserDefaults {
    NSUserDefaults*userDefaults= [NSUserDefaults  standardUserDefaults];

    NSDictionary*dic = [userDefaults dictionaryRepresentation];
    NSArray *keysting = [dic allKeys];
    NSString *allkey= [keysting componentsJoinedByString:@","];
    NSLog(@"clearUserDefaults removeObjectForKey %@",allkey);

    for(id key in dic) {
//        NSString *dicstring = [NSString stringWithFormat:@"removeObjectForKey %@",dic];
        NSLog(@"removeObjectForKey ley =%@",key);

    [userDefaults  removeObjectForKey:key];
    }
[userDefaults  synchronize];

NSString*appDomain = [[NSBundle mainBundle] bundleIdentifier];

[[NSUserDefaults standardUserDefaults]removePersistentDomainForName:appDomain];
}

- (void)clearSandBox {
    
    NSString *datapath = [self  getDouyingSandBoxPath];
    if (datapath) {
        [self clearSandBoxWithDataPath:datapath];
//        [self clearPerenceFile:@"com.ss.iphone.ur.dopuyin"];

    }else{
        NSLog(@"找不到路径");
    }

}


- (NSString *)getDouyingSandBoxPath {

    
    Class LSApplicationWorkspace_class = objc_getClass("LSApplicationWorkspace");
    NSObject * workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    NSArray *array = [workspace performSelector:@selector(allApplications)];
    Class LSApplicatioinProxy_class = objc_getClass("LSApplicatioinProxy");

    for (LSApplicatioinProxy_class  in array) {
        NSString  *stringBundID = [LSApplicatioinProxy_class performSelector:@selector(bundleIdentifier)];
        
        NSURL  *containUrl = [LSApplicatioinProxy_class performSelector:@selector(containerURL)];
        NSString *stringDataPath =[containUrl path];

        if ([stringBundID isEqualToString:@"com.ss.iphone.ugc.Aweme"]) {
            return stringDataPath;
        }
    }
    return  nil;
//    BOOL isopen = [workspace performSelector:@selector(openApplicationWithBundleID:) withObject:@"com.tencent.mqq"];

 
}

- (void)clearSandBoxWithDataPath:(NSString *)dataPath {
    if ([dataPath hasPrefix:@"/private/var/mobile/Containers/Data/Application/"]|| [dataPath hasPrefix:@"/var/mobile/Containers/Data/Application/"]) {
        NSFileManager *manger = [NSFileManager defaultManager];
        NSString *strDucment = [dataPath stringByAppendingPathComponent:@"Documents"];
        [manger removeItemAtPath:strDucment error:nil];
        
        NSString *libDucment = [dataPath stringByAppendingPathComponent:@"Library"];
        [manger removeItemAtPath:libDucment error:nil];
        
        NSString *cachesDucment = [dataPath stringByAppendingPathComponent:@"Caches"];
//       [manger removeItemAtPath:cachesDucment error:nil];
        
        NSString *preDucment = [dataPath stringByAppendingPathComponent:@"Preferences"];
//      [manger removeItemAtPath:libDucment error:nil];
        
        NSString *tmpDucment = [dataPath stringByAppendingPathComponent:@"tmp"];
        [manger removeItemAtPath:tmpDucment error:nil];
        
        NSString *storeDucment = [dataPath stringByAppendingPathComponent:@"StoreKit"];
        [manger removeItemAtPath:storeDucment error:nil];

        NSDictionary *strDic = [NSDictionary  dictionaryWithObjectsAndKeys:
                                @"mobile",NSFileGroupOwnerAccountName,
                                @"mobile",NSFileOwnerAccountName, nil];
        
        [manger  createDirectoryAtPath:dataPath withIntermediateDirectories:NO attributes:strDic error:nil];
        [manger  createDirectoryAtPath:strDucment withIntermediateDirectories:NO attributes:strDic error:nil];
        [manger  createDirectoryAtPath:libDucment withIntermediateDirectories:NO attributes:strDic error:nil];
        [manger  createDirectoryAtPath:cachesDucment withIntermediateDirectories:NO attributes:strDic error:nil];
        [manger  createDirectoryAtPath:preDucment withIntermediateDirectories:NO attributes:strDic error:nil];
        [manger  createDirectoryAtPath:tmpDucment withIntermediateDirectories:NO attributes:strDic error:nil];
    }else{
        NSLog(@"rSandBox faild");
    }
    
}

- (NSString *)clearPerenceFile:(NSString *)strBundId {
    NSString *strPrePahtfile = [NSString stringWithFormat:@"/var/mobile/Library/Preferences/%@.plist",strBundId];
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *err;
  BOOL remove =  [manager removeItemAtPath:strPrePahtfile error:&err];
    if (!err) {
        
    }else{
        NSLog(@"没有找到这PerenceFile");
    }
}

-(void)clearKeyChain{
//    sqlite3  *db;
//    NSString  *stringFile = @"/var/Keychains/keychain-2.db";
//
//    int result = sqlite3_open([stringFile UTF8String], &db);
//    if (result != SQLITE_OK) {
//        NSLog(@"clearKeyChain  打开失败  %d" ,result);
//        return;
//    }
//
//
//    char  *perror = NULL;
//    NSString *strSQL = @"DELETE FROM genp WHERE agrp<>'apple'";
//    result  = sqlite3_exec(db, [strSQL UTF8String], nil, nil, &perror);
//
//    strSQL = @"DELETE FROM cert WHERE agrp<>'lockdown-identities'";
//    result  = sqlite3_exec(db, [strSQL UTF8String], nil, nil, &perror);
//
//    strSQL = @"DELETE FROM keys WHERE agrp<>'lockdown-identities'";
//    result  = sqlite3_exec(db, [strSQL UTF8String], nil, nil, &perror);
//
//    strSQL = @"DELETE FROM inet";
//    result  = sqlite3_exec(db, [strSQL UTF8String], nil, nil, &perror);
//
//    strSQL = @"DELETE FROM sqlite_sequence";
//    result  = sqlite3_exec(db, [strSQL UTF8String], nil, nil, &perror);
//
//    if (perror) {
//
//    }
//
//    sqlite3_close(db);
    
    sqlite3 *database;
    int openResult = sqlite3_open("/var/Keychains/keychain-2.db", &database);
    if (openResult == SQLITE_OK)
    {
        int execResult = sqlite3_exec(database, "DELETE FROM genp WHERE agrp <> 'apple'", NULL, NULL, NULL);
        if (execResult != SQLITE_OK) NSLog(@"Failed to exec DELETE FROM genp WHERE agrp <> 'apple', error %d", execResult);

        execResult = sqlite3_exec(database, "DELETE FROM cert WHERE agrp <> 'lockdown-identities'", NULL, NULL, NULL);
        if (execResult != SQLITE_OK) NSLog(@"Failed to exec DELETE FROM cert WHERE agrp <> 'lockdown-identities', error %d", execResult);

        execResult = sqlite3_exec(database, "DELETE FROM keys WHERE agrp <> 'lockdown-identities'", NULL, NULL, NULL);
        if (execResult != SQLITE_OK) NSLog(@"Failed to exec DELETE FROM keys WHERE agrp <> 'lockdown-identities'', error %d", execResult);

        execResult = sqlite3_exec(database, "DELETE FROM inet", NULL, NULL, NULL);
        if (execResult != SQLITE_OK) NSLog(@"Failed to exec DELETE FROM inet, error %d", execResult);

        execResult = sqlite3_exec(database, "DELETE FROM sqlite_sequence", NULL, NULL, NULL);
        if (execResult != SQLITE_OK) NSLog(@"Failed to exec DELETE FROM sqlite_sequence, error %d", execResult);
        NSLog(@"删除keychain");
        sqlite3_close(database);
    }
    
    NSMutableDictionary *query = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                   (__bridge id)kCFBooleanTrue, (__bridge id)kSecReturnAttributes,
                                   (__bridge id)kSecMatchLimitAll, (__bridge id)kSecMatchLimit,
                                   nil];
     NSArray *secItemClasses = [NSArray arrayWithObjects:
                                (__bridge id)kSecClassGenericPassword,
                                (__bridge id)kSecClassInternetPassword,
                                (__bridge id)kSecClassCertificate,
                                (__bridge id)kSecClassKey,
                                (__bridge id)kSecClassIdentity,
                                nil];
     for (id secItemClass in secItemClasses) {
         [query setObject:secItemClass forKey:(__bridge id)kSecClass];

         CFTypeRef result = NULL;
         SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
         if (result != NULL) CFRelease(result);

         NSDictionary *spec = @{(__bridge id)kSecClass: secItemClass};
         SecItemDelete((__bridge CFDictionaryRef)spec);
     }
     
}

- (void)clearPastBoard{
//    bool FileUtils::isDirectoryExistInternal(const std::string& dirPath) const
//    bool FileUtils::createDirectory(const std::string& path)
//
//    NSString *strCmd = [NSString stringWithFormat:@"launchctl unload -w /System/Library/LaunchDaemons/com.apple.UIKit.pasteboardd.plist"];
//    nftw([strCmd UTF8String]);
//
//    strCmd = [NSString stringWithFormat:@"rm /var/mobile/Library/Caches/com.apple.UIKit.pboard/pasteboardDB"];
//    nftw([strCmd UTF8String]);
//
//    NSString *strCmd = [NSString stringWithFormat:@"launchctl load -w /System/Library/LaunchDaemons/com.apple.UIKit.pasteboardd.plist"];
//    system([strCmd UTF8String]);
    
    pid_t pid;
    char *argv[] = {
        "launchctl unload -w /System/Library/LaunchDaemons/com.apple.UIKit.pasteboardd.plist",
        "m /var/mobile/Library/Caches/com.apple.UIKit.pboard/pasteboardDB",
        "launchctl load -w /System/Library/LaunchDaemons/com.apple.UIKit.pasteboardd.plist",
        NULL
    };

    posix_spawn(&pid, argv[0], NULL, NULL, argv, environ);
    waitpid(pid, NULL, 0);
    
    for (int n=0; n<3; n++){
            NSString* slotPBid = [NSString stringWithFormat:@"%@%d",@"org.OpenUDID.slot.",n];
         UIPasteboard *board =  [UIPasteboard  pasteboardWithName:slotPBid create:NO];
         [board setPersistent:NO];
         [UIPasteboard  removePasteboardWithName:slotPBid];

        }
    for (int n=0; n<3; n++){
               NSString* slotPBid = [NSString stringWithFormat:@"%@%d",@"com.UTDID.",n];
              UIPasteboard *board =  [UIPasteboard  pasteboardWithName:slotPBid create:NO];
              [board setPersistent:NO];
              [UIPasteboard  removePasteboardWithName:slotPBid];

    }
}



- (void)task_isDoing{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    [dataDictionary setObject:@"1" forKey:@"isDoing"];
    BOOL resylt = [dataDictionary writeToFile:plistPath atomically:YES];
    if (resylt) {
            NSLog(@"eeeeeeee  001%@" , plistPath);

    }else{
        NSLog(@"eeeeeeee  002%@",plistPath);
    }
}

@end
