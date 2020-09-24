// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>
#import "LGWeChatParamQueue.h"
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#include <CoreFoundation/CFUUID.h>
#include <substrate.h>
#import <sys/utsname.h>
#import <dlfcn.h>
#include <spawn.h>
#import<SystemConfiguration/CaptiveNetwork.h>

/* ---------------        这是任务hook 代码           ----------    */

%hook DYSoketManager
-(void)viewDidLoad{

[[[UIAlertView alloc]initWithTitle:NSStringFromSelector(_cmd) message:@"hhhsd" delegate:self cancelButtonTitle:@"cancdddddel取消" otherButtonTitles:nil] show];

return %orig;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return %orig;

}

%end

%hook AppDelegate

- (_Bool)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2{
    
    return %orig;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[LGWeChatParamQueue sharedQueue] task_isDoing];
    return %orig;
}
%end


%hook AWEFeedTableViewController
- (void)viewDidLoad{
    [[LGWeChatParamQueue sharedQueue] delyStartTheTask];
    return %orig;
}

%end


%hook AWECommentListViewController
- (void)viewDidLoad{
    %log;
    [[LGWeChatParamQueue sharedQueue] delaybecomeFirstRespond];
    
    return  %orig;
}

%end
%hook NHAccountManager
- (void)handleLoginSuccess:(unsigned long long)arg1 verificationInfo:(id)arg2 params:(id)arg3 completion:(id)arg4{
    return  %orig;
}

%end

%hook AWETabBarPlusButton

- (id)initWithFrame:(struct CGRect)arg1{
    if([DYTaskManager sharedQueue].model){
           [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(buttonClicked) name:kNotificationAddPlusBtnClick object:nil];
    }

    return  %orig;
}

%end

%hook AWEFeedContainerViewController
- (void)didFinishLogin{
//    [DYLoginManager sharedQueue]
    [[DYLoginManager sharedQueue]  loginSuccess];
    return  %orig;
}

%end

%hook DYAddressBookViewController

- (void)viewDidLoad{
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(skipAction) withObject:nil afterDelay:3];
    }

    return  %orig;
}

%end

%hook AWEAwemePlayInteractionPresenter

-(id)init{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationDidReciveForDY:) name:kNotificationUserCenterRecived object:nil];
    });
    
    return  %orig;
}

%new
- (void)notificationDidReciveForDY:(NSNotification *)arg1{
    UINavigationController *nav =(UINavigationController*)[[self viewController] navigationController];
    AWEUserDetailViewController *vc =[%c(AWEUserDetailViewController) new];
    vc.userID = arg1.userInfo[@"UserID"];
    [nav pushViewController:vc animated:YES];
}

%end

%hook AWEGrowingTextView
- (void)setBackgroundColor:(id)arg1{
    if([DYTaskManager sharedQueue].model){
           [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewbecomeFirstRespond:) name:kNotificationCommentsRecived object:nil];
    }

    return  %orig;
}

%new
- (void)textViewbecomeFirstRespond:(NSNotification *)arg1{
    [self.internalTextView becomeFirstResponder];
    NSString *loadPathStr = arg1.userInfo[@"key"];
    [self.internalTextView setText: loadPathStr ];
}

%end


//通过url链接进入某个主播页面或者 链接
%hook AWEShareTokenNoteCardView
- (id)init{
    //    static dispatch_once_t onceToken;
    //    dispatch_once(&onceToken, ^{
    //    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(gotoVideo) name:kNotificationDidTapShareCardView object:nil];
    //    });
    return %orig;
}

- (void)gotoVideo{
    
    return %orig;
}

- (void)setupUI{
    if([DYTaskManager sharedQueue].model.task_id.intValue == 10001){
        [[DYLikeManager sharedQueue] tapTheShareViewToEnterTheheMovieView];
        NSLog(@"DYLikeManager  orig = DYLikeManager");

    }else if([DYTaskManager sharedQueue].model.task_id.intValue == 60001){
        [[DYCommentManager sharedQueue] tapTheShareViewToEnterTheMovieViewAndComment];
    }
    return %orig;
    
}

%end

//搜索模拟点击
%hook AWESearchBar
- (id)initWithFrame:(struct CGRect)arg1{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidplast:) name:kNotificationDidTapPlastBoard object:nil];
    return  %orig;
}
%new
- (void)textViewDidplast:(NSNotification *)arg1{
    NSString *loadPathStr = arg1.userInfo[@"key"];
    //    [self.internalTextView setText: loadPathStr ];
    self.ownSearchField.text =loadPathStr;
}
%end

/*             登录用户的代码            */

%hook AWEFamiliarAlertPopupView

- (void)setupUI{
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(popViewShouldDissMiss) withObject:nil afterDelay:1];
    }

    return  %orig;
}

%new
- (void)popViewShouldDissMiss{
    if(self.tapCloseBtnBlock){
        self.tapCloseBtnBlock();
    }
}
%end

%hook AWEAlertWindowManager

- (void)makeKeyAndVisible{
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(dismiss) withObject:nil afterDelay:1];
    }
    return  %orig;

}

%end

%hook BDTuringVerifyView
- (void)webView:(id)arg1 didFinishNavigation:(id)arg2{
    DYTaskModel *model = [DYTaskManager sharedQueue].model;
    if (model.task_id){
        CGRect smallRect = self.webView.frame ;
        [DYLoginManager sharedQueue].imageFrame =smallRect;
        [DYLoginManager sharedQueue].screenWebView =self.webView;
    }
    %orig;
//    [[DYLoginManager sharedQueue] starToShartScreen];
}
%end

%hook AWEProfileHeaderExtraViewController
- (void)relationBtnClicked:(id)arg1{
    %orig;
}
%end


%hook AWEAccountPrivacyAndUserItemAlertView
- (void)_commonInit{
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(confirmButtonDidTap) withObject:nil afterDelay:3];
    }

    %orig;
}

%end

//登录账户电话号码
%hook DYPhoneNumberInputView

-(void)layoutSubviews
{
    if([[DYTaskManager sharedQueue].model account_name]){
        SHSPhoneTextField *textField=   [self textField];
        textField.text =[[DYTaskManager sharedQueue].model account_name];
        [self didChangeValue];
    }
    %orig;
}
%end

// 点击登录按钮
%hook DYSMSLoginV2Step1ViewController
- (void)viewDidLoad{
    
    if([[DYTaskManager sharedQueue].model account_name]){
        DYTaskModel *model = [DYTaskManager sharedQueue].model;
          if (model.task_id){
              [self performSelector:@selector(loginAction:) withObject:nil afterDelay:1];
          }
        
    }
    return %orig;
}

%end

%hook DYUserProtocolView
-(void)layoutSubviews
{
    if([DYTaskManager sharedQueue].model){
        UIButton *btn= [self selectButton];
        btn.selected = YES;
        [self performSelector:@selector(selectAction) withObject:nil afterDelay:1];
    }
    return %orig;
}

%end

//弹框  暂时取消，同意
%hook AWEUIAlertView
- (id)init{
    if([DYTaskManager sharedQueue].model){
        [self performSelector:@selector(dismissSelfDefineAlert) withObject:nil afterDelay:0.2];
           if(([DYTaskManager sharedQueue].model.task_id.intValue == 30001)){
               NSLog(@"AWEUIAlertViewddddddddddd");
               [self performSelector:@selector(dismiss:) withObject:nil afterDelay:0.2];
           }else{
               [self performSelector:@selector(dismissSelfDefineAlert) withObject:nil afterDelay:0.2];
           }
       }
   
    return %orig;
}

%end

//通讯录
%hook AWEUploadContactAlertView
- (void)loadSubviews{
    if([DYTaskManager sharedQueue].model){
        if(([DYTaskManager sharedQueue].model.task_id.intValue == 30001)){
            NSLog(@"AWEUploadContactAlertViewddddddddddd");
            [self performSelector:@selector(dismissAlertView) withObject:nil afterDelay:1];
        }
    }

    return %orig;
}


%end


//这个是直播间相关 代码
%hook IESLiveMessageClient
- (void)didRecieveMessages:(id)arg1{
    //HTSLiveMemberMessage,HTSLiveRoomUserSeqMessage,HTSLiveRoomUserSeqMessage,HTSLiveChatMessage,
    if([arg1 isKindOfClass:%c(NSArray)]){
        NSArray *mesgArray =arg1;
        for (id reu in mesgArray) {
            if([reu isKindOfClass:%c(HTSLiveChatMessage)]){//用户评论
                HTSLiveChatMessage *re =(HTSLiveChatMessage *)reu;
                NSLog(@"HTSLiveChatMessageCCCCCCCCCCCC = %@",re.content);
            }else if([reu isKindOfClass:%c(HTSLiveRoomMessage)]){//系统提示
                HTSLiveRoomMessage *re =(HTSLiveRoomMessage *)reu;
                NSLog(@"HTSLiveRoomMessageGGGGGGGGGGGG = %@",re.content);
            }else if([reu isKindOfClass:%c(HTSLiveRoomUserSeqMessage)]){//直播间的相关信息
                HTSLiveRoomUserSeqMessage *re =(HTSLiveRoomUserSeqMessage *)reu;
                NSLog(@"HTSLiveRoomUserSeqMessageRRRRRRRRRRR = %@",re.common);
            }else if([reu isKindOfClass:%c(HTSLiveGiftMessage)]){//礼物信息
                HTSLiveGiftMessage *re =(HTSLiveGiftMessage *)reu;
                NSLog(@"HTSLiveGiftMessageGGGGGGGGGGGG = %@",re.common.displayText);
            }else if([reu isKindOfClass:%c(HTSLiveMemberMessage)]){//观众进入直播间
                HTSLiveMemberMessage *re =(HTSLiveMemberMessage *)reu;
                NSLog(@"HTSLiveMemberMessageMMMMMMMMMM = %@",re.anchorDisplayText);
            }else if([reu isKindOfClass:%c(HTSLiveDiggMessage)]){//
                HTSLiveDiggMessage *re =(HTSLiveDiggMessage *)reu;
                NSLog(@"HTSLiveDiggMessageGGGGGGGGGGGG = %@",re.common);
            }else if([reu isKindOfClass:%c(HTSLiveScreenChatMessage)]){//
                HTSLiveScreenChatMessage *re =(HTSLiveScreenChatMessage *)reu;
                NSLog(@"HTSLiveScreenChatMessageGGGGGGGGGGGG = %@",re.content);
            }else if([reu isKindOfClass:%c(HTSLiveFreeCellGiftMessage)]){//
                HTSLiveFreeCellGiftMessage *re =(HTSLiveFreeCellGiftMessage *)reu;
                NSLog(@"HTSLiveFreeCellGiftMessageGGGGGGGGGGGG = %@",re.common);
            }else if([reu isKindOfClass:%c(HTSLiveLiveEcomMessage)]){//
                HTSLiveLiveEcomMessage *re =(HTSLiveLiveEcomMessage *)reu;
                NSLog(@"HTSLiveLiveEcomMessageGGGGGGGGGGGG = %@",re.common);
            }

        }

    }
    return %orig;
}
%end

//主播相关信息，以及橱窗号
%hook TTNetworkManagerChromium

- (id)requestForJSONWithURL_:(id)arg1 params:(id)arg2 method:(id)arg3 needCommonParams:(_Bool)arg4 headerField:(id)arg5 requestSerializer:(Class)arg6 responseSerializer:(Class)arg7 autoResume:(_Bool)arg8 verifyRequest:(_Bool)arg9 isCustomizedCookie:(_Bool)arg10 callback:(id)arg11 callbackWithResponse:(void(^)(id,id))arg12 dispatch_queue:(id)arg13{

    NSLog(@"GGGGGGGGGG %@ \n %@",arg1,arg2);
    NSString *url = arg1;

    id myCallBackzbb = ^(id block_arg1,id block_arg2){
        arg12(block_arg1,block_arg2);
        NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
        resu[@"param_array"] = @{@"allData":block_arg2,@"report_type":@"10"};
        [[DYGetDataManager sharedQueue] configDataWithDic:resu];
    };
    
    id myCallBackUserInfo = ^(id block_arg1,id block_arg2){
        arg12(block_arg1,block_arg2);
        
        NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
        resu[@"param_array"] = @{@"allData":block_arg2,@"report_type":@"1"};
        [[DYGetDataManager sharedQueue] configDataWithDic:resu];
    };
    
    id myCallBackUserPost = ^(id block_arg1,id block_arg2){
        arg12(block_arg1,block_arg2);
        
        NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
        resu[@"param_array"] = @{@"allData":block_arg2,@"report_type":@"2"};
        [[DYGetDataManager sharedQueue] configDataWithDic:resu];
    };

    
    id myCallBackUserForward = ^(id block_arg1,id block_arg2){
        arg12(block_arg1,block_arg2);
        
        NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
        resu[@"param_array"] = @{@"allData":block_arg2,@"report_type":@"4"};
        [[DYGetDataManager sharedQueue] configDataWithDic:resu];
    };
    
    
    id myCallBackUserFavorite = ^(id block_arg1,id block_arg2){
        arg12(block_arg1,block_arg2);
        NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
        resu[@"param_array"] = @{@"allData":block_arg2,@"report_type":@"3"};

        [[DYGetDataManager sharedQueue] configDataWithDic:resu];
    };



    
//        if([url isEqualToString :@"https://aweme.snssdk.com/aweme/v1/forward/list/"]||[url isEqualToString :@"https://aweme.snssdk.com/aweme/v1/user/profile/other/"]||[url isEqualToString :@"https://aweme.snssdk.com/aweme/v1/aweme/post/"]||[url isEqualToString :@"https://aweme.snssdk.com/aweme/v1/aweme/favorite/"]||[url isEqualToString :@"https://aweme.snssdk.com/aweme/v1/promotion/user/promotion/list/"]||[url containsString :@"https://mon.snssdk.com/monitor/collect/"]){
    if([url containsString :@"https://webcast.amemv.com/webcast/ranklist/hot/"]){
        return  %orig(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackzbb,arg13);
    }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/user/profile/other/"]){
        return  %orig(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserInfo,arg13);
    }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/forward/list/"]){
        return  %orig(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserForward,arg13);
    }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/aweme/post/"]){
        return  %orig(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserPost,arg13);
    }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/aweme/favorite/"]){
        return  %orig(arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserFavorite,arg13);
    }else{
        return %orig;
    }

}

%end


/* ---------------        这是变机代码           ----------    */

%hook WXOMTAOpenUDID
+ (NSString*) value{
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"WXOMTAOpenUDID cccccopenudidi  orig = %@" ,%orig);
        
        NSLog(@"WXOMTAOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        
        return [[DYDeviceManager sharedQueue] openudid];
    }else{
        NSLog(@"WXOMTAOpenUDID cccccopenudidi  orig = num" );
        
        return %orig;
    }
}
%end


%hook BDLogOpenUDID
+ (NSString*) value{
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"BDLogOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"BDLogOpenUDID cccccopenudidi  orig = %@" ,%orig);
        
        return [[DYDeviceManager sharedQueue] openudid];;
    }else{
        NSLog(@"BDLogOpenUDID cccccopenudidi  orig = num" );
        
        return %orig;
    }
}
%end


%hook TTInstallOpenUDID
+ (NSString*) value{
    //    //NSLog(@"TTInstallOpenUDID  cccccopenudidi = %@" ,%orig);//115c8d003f0c84fda6e1fd1dc01ea1727b163010
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"TTInstallOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"TTInstallOpenUDID cccccopenudidi  orig = %@" ,%orig);
        
        return [[DYDeviceManager sharedQueue] openudid];;
    }else{
        NSLog(@"TTInstallOpenUDID cccccopenudidi  orig = num" );
        
        return %orig;
    }
    
}
%end


%hook UMANOpenUDID
+ (NSString*) value{
    //    //NSLog(@"UMANOpenUDID cccccopenudidi = %@" ,%orig);//115c8d003f0c84fda6e1fd1dc01ea1727b163010
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"UMANOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"UMANOpenUDID cccccopenudidi  orig = %@" ,%orig);
        
        return [[DYDeviceManager sharedQueue] openudid];;
    }else{
        NSLog(@"UMANOpenUDID cccccopenudidi  orig = num" );
        
        return %orig;
    }
}
%end

%hook UTDIDOpenUDID
+ (NSString*) value{
    
    NSLog(@"UTDIDOpenUDID cccccopenudidi openudid= %@" ,%orig);//XhbYrawERI8DADdxT7pq5P8V
    return %orig;
    
}
%end

%hook OpenUDID
+ (NSString*) value{
    //    return @"1bb7a4d034f2b9fc10d8e940696e0c1d020b8465";
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"OpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"OpenUDID cccccopenudidi  orig = %@" ,%orig);
        
        return [[DYDeviceManager sharedQueue] openudid];
    }else{
        NSLog(@"OpenUDID cccccopenudidi  orig = num" );
        
        return %orig;
    }
    
}
%end
//
%hook ASIdentifierManager
-(NSUUID *) advertisingIdentifier//设备信息idfa
{
    //    return [[NSUUID alloc] initWithUUIDString:@"047FF9B3-CB7A-4863-9A13-AB62936A83F4"];
    //    return [[NSUUID alloc] initWithUUIDString:@"104FF9B3-AB04-8305-9A44-AB62936A8434"];
    if([[DYDeviceManager sharedQueue] idfa]){
        //NSLog(@"CCCCCCCCC advertisingIdentifier = %@" ,[[LGWeChatParamQueue sharedQueue] idfa]);
        return [[DYDeviceManager sharedQueue] idfa];
    }else{
        NSLog(@"ASIdentifierManager cccccopenudidi  orig = num" );
        return %orig;
    }
}
%end

%hook UIDevice
+ (id)btd_idfaString{
    //    //NSLog(@"CCCCCCCCC btd_idfaString = %@" ,%orig);
    
    if([[DYDeviceManager sharedQueue] idfa]){
        //NSLog(@"CCCCCCCCC identifierForVendor = %@" ,[[LGWeChatParamQueue sharedQueue] idfa]);
        return [[DYDeviceManager sharedQueue] idfa];
    }else{
        return %orig;
    }
}

-(NSUUID *) identifierForVendor//设备信息idfv
{
    //    return [[NSUUID alloc] initWithUUIDString:@"0286C82F-7BA3-444F-AB3D-D7B7E2CCB37"];
    //    //NSLog(@"CCCCCCCCC identifierForVendor = %@" ,%orig);
    if([[DYDeviceManager sharedQueue] idfv]){
        //NSLog(@"CCCCCCCCC identifierForVendor = %@" ,[[LGWeChatParamQueue sharedQueue] idfv]);
        return [[DYDeviceManager sharedQueue] idfv];
    }else{
        //NSLog(@"idfv error  nil = %@" ,[[LGWeChatParamQueue sharedQueue] idfv]);
        return %orig;
    }
}

+ (id)sgm_data_acquisition_vendorid{
    //    //NSLog(@"UIDevice sgm_data_acquisition_vendorid = %@" ,%orig);
    
    if([[DYDeviceManager sharedQueue] idfv]){
        return [[[DYDeviceManager sharedQueue] idfv] UUIDString];
    }else{
        return %orig;
    }
}



//
-(NSString *) systemVersion//设备信息 系统版本
{
    //   //NSLog(@"sharedjkkjjHTTPCookieStorage cccccopenudidi = %@" ,[[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies]);
    //    return %orig;
    if([[DYDeviceManager sharedQueue] version]){
        //NSLog(@"CCCCCCCCC = %@" ,[[LGWeChatParamQueue sharedQueue] version]);
        
        return [[DYDeviceManager sharedQueue] version];
    }else{
        return %orig;
    }
    //
}

-(NSString *) systemName//设备名称
{
    //    return @"xiaohong";
    if([[DYDeviceManager sharedQueue] user_name]){
        return [[DYDeviceManager sharedQueue] user_name];
    }else{
        return %orig;
    }
    
}

%end


%hook TTInstallKeychain

+ (id)loadValueForKey:(id)arg1{
    //   ////%log;
    id result =  %orig;
    if (result){
        //NSLog(@"发哈哈哈哈 = %@  result = %@",arg1,%orig);
    }
    return %orig;
}

%end



%hook NSKeyedArchiver
+ (NSData *)archivedDataWithRootObject:(id)rootObject{//可能是 69553866637   这就是设备id  有时候是did
    ////%log;
    if(![rootObject isKindOfClass:[NSData class]]){
        if([rootObject isKindOfClass:[NSDictionary class]]){
            NSMutableDictionary *dic =   [[NSMutableDictionary alloc] initWithDictionary:rootObject];
            
            if(dic[@"iid"] &&dic[@"did"]){
                NSString *filePatch = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0]stringByAppendingPathComponent:@"douyin_help_status.plist"];
                NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:filePatch];
                [dataDictionary setObject:dic[@"iid"] forKey:@"iid"];
                [dataDictionary setObject:dic[@"did"] forKey:@"did"];
                [dataDictionary writeToFile:filePatch atomically:YES];
            }
            
        }
    }
    
    return %orig;
    
}

%end


%hook TTInstallDeviceHelper
+ (id)idfvString{
    //    //NSLog(@"TTInstallDeviceHelper douyingbundleIdentifier idfv CLSBetaController  appBundleIdentifier   %@",%orig);
    //    return  %orig;
    
    if([[DYDeviceManager sharedQueue] idfv]){
        return [[[DYDeviceManager sharedQueue] idfv] UUIDString];
    }else{
        return %orig;
    }
    
}
+ (id)idfaString{
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return %orig;
    }
}

+ (_Bool)isJailBroken{
    return NO;
}

%end

%hook BDADeviceHelper
+ (id)idfaString{
    //NSLog(@"BDADeviceHelper douyingbundleIdentifier idfaString    %@",%orig);
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return %orig;
    }
    return  %orig;
    
}
%end

%hook BDLogDeviceHelper
+ (id)idfaString{
    //NSLog(@"BDLogDeviceHelper douyingbundleIdentifier idfaString    %@",%orig);
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return %orig;
    }
    return  %orig;
    
}
%end

%hook IESLiveDeviceInfo
+ (id)idfaString{
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return %orig;
    }
    
    return  %orig;
    
}
%end

%hook TTAdSplashDeviceHelper
+ (id)idfaString{
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return %orig;
    }
    //NSLog(@"TTAdSplashDeviceHelper douyingbundleIdentifier idfaString    %@",%orig);
    
    return  %orig;
}
%end


%hook TTExtensions
+ (id)idfaString{
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else
        //NSLog(@"TTExtensions douyingbundleIdentifier idfaString    %@",%orig);
        
        return  %orig;
    
}
%end





%hook UMANUtil
+ (id)idfa{
    ////%log;
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return %orig;
    }
    
    //    return  @"com.ss.iphone.ugc.Aweme";
}
+ (id)idfv{
    ////%log;
    //NSLog(@"idfv   UMANUtil  idfv   %@",%orig);
    if([[DYDeviceManager sharedQueue] idfv]){
        return [[[DYDeviceManager sharedQueue] idfv] UUIDString];
    }else{
        return %orig;
    }
}
%end


static CFTypeRef (*orig_MGCopyAnswer)(CFStringRef str);
static CFTypeRef (*orig_MGCopyAnswer_internal)(CFStringRef str, uint32_t* outTypeCode);
static int (*orig_uname)(struct utsname *);

CFTypeRef new_MGCopyAnswer(CFStringRef str);
CFTypeRef new_MGCopyAnswer_internal(CFStringRef str, uint32_t* outTypeCode);
int new_uname(struct utsname *systemInfo);

int new_uname(struct utsname * systemInfo){
    //NSLog(@"new_uname");
    int nRet = orig_uname(systemInfo);
    
    char str_machine_name[100] = "iPhone8,1";
    strcpy(systemInfo->machine,str_machine_name);
    return nRet;
}

CFTypeRef new_MGCopyAnswer(CFStringRef str){
    ////NSLog(@"new_MGCopyAnswer");
    //NSLog(@"strAAAAAA: %@",str);
    
    NSString *keyStr = (__bridge NSString *)str;
    if ([keyStr isEqualToString:@"UniqueDeviceID"] ) {
        NSLog(@"Get UniqueDeviceID ");
        
        if([[DYDeviceManager sharedQueue] openudid]){
            NSString *strUserAssignedDeviceName = [[DYDeviceManager sharedQueue] openudid];
            return (__bridge CFStringRef)strUserAssignedDeviceName;
        }else{
            return orig_MGCopyAnswer(str);
        }
    }
    else if ([keyStr isEqualToString:@"SerialNumber"] ) {
        
        NSString *strSerialNumber = @"DNPJD17NDTTP";
        return (__bridge CFStringRef)strSerialNumber;
    }
    else if ([keyStr isEqualToString:@"WifiAddress"] ) {
        
        NSString *strWifiAddress = @"98:FE:94:1F:30:0A";
        return (__bridge CFStringRef)strWifiAddress;
    }
    else if ([keyStr isEqualToString:@"BluetoothAddress"] ) {
        
        NSString *strBlueAddress = @"98:FE:94:1F:30:0A";
        return (__bridge CFStringRef)strBlueAddress;
    }
    else if([keyStr isEqualToString:@"ProductVersion"]) {
        
        
        if([[DYDeviceManager sharedQueue] version]){
            NSString *strUserAssignedDeviceName = [[DYDeviceManager sharedQueue] version];
            return (__bridge CFStringRef)strUserAssignedDeviceName;
        }else{
            return orig_MGCopyAnswer(str);
        }
        
        
    }
    else if([keyStr isEqualToString:@"UserAssignedDeviceName"]) {
        if([[DYDeviceManager sharedQueue] user_name]){
            NSString *strUserAssignedDeviceName = [[DYDeviceManager sharedQueue] user_name];
            return (__bridge CFStringRef)strUserAssignedDeviceName;
        }else{
            return orig_MGCopyAnswer(str);
        }
        
    }
    return orig_MGCopyAnswer(str);
    
}


CFTypeRef new_MGCopyAnswer_internal(CFStringRef str, uint32_t* outTypeCode) {
    ////NSLog(@"new_MGCopyAnswer_internal");
    //NSLog(@"strAAA: %@",[[LGWeChatParamQueue sharedQueue] version]);
    
    NSString *keyStr = (__bridge NSString *)str;
    if ([keyStr isEqualToString:@"UniqueDeviceID"] ) {
        NSLog(@"Get UniqueDeviceID ");
        if([[DYDeviceManager sharedQueue] openudid]){
            NSString *strUserAssignedDeviceName = [[DYDeviceManager sharedQueue] openudid];
            return (__bridge CFStringRef)strUserAssignedDeviceName;
        }else{
            
            return orig_MGCopyAnswer_internal(str, outTypeCode);
            
        }
    }
    else if ([keyStr isEqualToString:@"SerialNumber"] ) {
        
        NSString *strSerialNumber = @"DNPJD17NDTTP";
        return (__bridge CFStringRef)strSerialNumber;
    }
    else if ([keyStr isEqualToString:@"WifiAddress"] ) {
        
        NSString *strWifiAddress = @"98:FE:94:1F:30:0A";
        return (__bridge CFStringRef)strWifiAddress;
    }
    else if ([keyStr isEqualToString:@"BluetoothAddress"] ) {
        
        NSString *strBlueAddress = @"98:FE:94:1F:30:0A";
        return (__bridge CFStringRef)strBlueAddress;
    }
    else if([keyStr isEqualToString:@"ProductVersion"]) {
        
        
        if([[DYDeviceManager sharedQueue] version]){
            NSString *strUserAssignedDeviceName = [[DYDeviceManager sharedQueue] version];
            return (__bridge CFStringRef)strUserAssignedDeviceName;
        }else{
            
            return orig_MGCopyAnswer_internal(str, outTypeCode);
            
        }
        
    }
    else if([keyStr isEqualToString:@"UserAssignedDeviceName"]) {
        
        if([[DYDeviceManager sharedQueue] user_name]){
            NSString *strUserAssignedDeviceName = [[DYDeviceManager sharedQueue] user_name];
            return (__bridge CFStringRef)strUserAssignedDeviceName;
        }else{
            
            return orig_MGCopyAnswer_internal(str, outTypeCode);
            
        }
        
    }
    
    return orig_MGCopyAnswer_internal(str, outTypeCode);
    
}

void hook_uname(){
    //NSLog(@"hook_uname");
    char str_libsystem_c[100] = {0};
    strcpy(str_libsystem_c, "/usr/lib/libsystem_c.dylib");
    
    void *h = dlopen(str_libsystem_c, RTLD_GLOBAL);
    if(h != 0){
        
        MSImageRef ref = MSGetImageByName(str_libsystem_c);
        void * unameFn = MSFindSymbol(ref, "_uname");
        MSHookFunction(unameFn, (void *) new_uname, (void **)&orig_uname);
    }
    else {
        
        strcpy(str_libsystem_c, "/usr/lib/system/libsystem_c.dylib");
        h = dlopen(str_libsystem_c, RTLD_GLOBAL);
        if(h != 0){
            
            MSImageRef ref = MSGetImageByName(str_libsystem_c);
            void * unameFn = MSFindSymbol(ref, "_uname");
            MSHookFunction(unameFn, (void *) new_uname, (void **)&orig_uname);
        }
        else {
            
        }
    }
    
}

void hookMGCopyAnswer(){
    
    char *dylib_path = (char*)"/usr/lib/libMobileGestalt.dylib";
    void *h = dlopen(dylib_path, RTLD_GLOBAL);
    if (h != 0) {
        MSImageRef libGestalt = MSGetImageByName("/usr/lib/libMobileGestalt.dylib");
        void *MGCopyAnswerFn = MSFindSymbol(libGestalt, "_MGCopyAnswer");
        
        //        MSImageRef ref = MSGetImageByName([strDylibFile UTF8String]);
        //        void * MGCopyAnswerFn = MSFindSymbol(ref, "_MGCopyAnswer");
        
        //64位特征码
        uint8_t MGCopyAnswer_arm64_impl[8] = {0x01, 0x00, 0x80, 0xd2, 0x01, 0x00, 0x00, 0x14};
        //10.3特征码
        uint8_t MGCopyAnswer_armv7_10_3_3_impl[5] = {0x21, 0x00, 0xf0, 0x00, 0xb8};
        
        //处理64位系统
        if (memcmp(MGCopyAnswerFn, MGCopyAnswer_arm64_impl, 8) == 0) {
            
            MSHookFunction((void*)((uint8_t*)MGCopyAnswerFn + 8), (void*)new_MGCopyAnswer_internal,
                           (void**)&orig_MGCopyAnswer_internal);
        }
        //处理32位10.3到10.3.3系统
        else if(memcmp(MGCopyAnswerFn, MGCopyAnswer_armv7_10_3_3_impl, 5) == 0){
            
            MSHookFunction((void*)((uint8_t*)MGCopyAnswerFn + 6), (void*)new_MGCopyAnswer_internal,
                           (void**)&orig_MGCopyAnswer_internal);
            
        }
        else{
            
            MSHookFunction(MGCopyAnswerFn, (void *) new_MGCopyAnswer, (void **)&orig_MGCopyAnswer);
        }
    }
    
}

static CLLocation *(* _orig_CLLocationManager_location)(id _self,SEL _cmd1);

static CLLocation * CLLocationManager_location(id x1,SEL x0){
    CLLocation *location =_orig_CLLocationManager_location(x1,x0);
    return location;
};

static CLLocationCoordinate2D (* _orig_CLLocation_coordinate)(id _self,SEL _cmd1);

CLLocationCoordinate2D CLLocation_coordinate(id _self,SEL _cmd1){
    CLLocationCoordinate2D location;
    //纬度
    location.latitude = 35.98866425;
    //经度
    location.longitude = 116.34266425;
    return location;
    
}

void hookLocations(){
    MSHookMessageEx(objc_getClass("CLLocationManager"),@selector(location),(IMP)CLLocationManager_location,(IMP *)&_orig_CLLocationManager_location);
    
    MSHookMessageEx(objc_getClass("CLLocation"),@selector(coordinate),(IMP)CLLocation_coordinate,(IMP *)&_orig_CLLocation_coordinate);
}


CFDictionaryRef (*orig_CFNetworkCopySystemProxySettings)(void);
CFDictionaryRef new_CFNetworkCopySystemProxySettings(void){
    
    NSDictionary * oldDic = (__bridge NSDictionary *)orig_CFNetworkCopySystemProxySettings();
    
    static CFMutableDictionaryRef proxySettings = (CFMutableDictionaryRef) orig_CFNetworkCopySystemProxySettings();
    
    NSDictionary *dictionary = @{
        @"ExceptionsList" : oldDic[@"ExceptionsList"],
        @"FTPPassive" : oldDic[@"FTPPassive"]
    };
    NSDictionary *settingarray  = @{
        @"ExceptionsList" : oldDic[@"ExceptionsList"],
        @"FTPPassive" : oldDic[@"FTPPassive"],
        @"__SCOPED__" : @{@"en0":dictionary}
    };
    NSLog(@"orig_CFNetworkCopySystemProxySettings %@",settingarray);
    
    return (__bridge_retained CFDictionaryRef)settingarray;
    
}


void hookIPhoneVPN(){
    //    MSHookFunction((void *)CFNetworkCopySystemProxySettings, (void *)new_CFNetworkCopySystemProxySettings, (void **)&orig_CFNetworkCopySystemProxySettings);
    MSHookFunction((void*)MSFindSymbol(NULL,"_CFNetworkCopySystemProxySettings"), (void *)new_CFNetworkCopySystemProxySettings, (void **)&orig_CFNetworkCopySystemProxySettings);
}

#import <spawn.h>

extern char **environ;

void run_cmd(const char *cmd)
{
    pid_t pid;
    const char *argv[] = {"sh", "-c", cmd, NULL};
    int status;
    
    status = posix_spawn(&pid, "/bin/sh", NULL, NULL, (char* const*)argv, environ);
    if (status == 0) {
        if (waitpid(pid, &status, 0) == -1) {
            perror("waitpid");
        }
    }
}

%ctor{
    
    [[LGWeChatParamQueue sharedQueue] clearCookies];
    
    [[LGWeChatParamQueue sharedQueue] clearKeyChain];
    
    [[LGWeChatParamQueue sharedQueue] resetDoyinDevice];
    
    [[LGWeChatParamQueue sharedQueue] resetDouyinTask];
    [[LGWeChatParamQueue sharedQueue] task_isDoing];
    
    

    
    hookMGCopyAnswer();
    hook_uname();
    hookLocations();
    //    hookIPhoneVPN();
    
}
//


