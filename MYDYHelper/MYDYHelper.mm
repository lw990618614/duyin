#line 1 "/Users/apple/Desktop/MYDYHelper/MYDYHelper/MYDYHelper.xm"


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





#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class AWEFeedSegmentedControl; @class NHAccountManager; @class DYAddressBookViewController; @class HTSLiveLiveEcomMessage; @class AWEUIAlertView; @class AWEUserProfileSlidingScrollView; @class AWEAwemePlayInteractionPresenter; @class AWEAccountPrivacyAndUserItemAlertView; @class IESLiveMessageClient; @class AWEAlertWindowManager; @class AWEProfileHeaderExtraViewController; @class HTSLiveRoomUserSeqMessage; @class UIAlertController; @class HTSLiveRoomMessage; @class AWEFamiliarAlertPopupView; @class AWELanguageSelectionPopupManager; @class HTSLiveMemberMessage; @class AWEFeedContainerViewController; @class AWETabBarPlusButton; @class SKStoreProductViewController; @class DYPhoneNumberInputView; @class DYUserProtocolView; @class HTSLiveChatMessage; @class AWESearchBar; @class DYQuickLoginLoadingViewController; @class AWEAwemeDetailTableViewController; @class AWEUploadContactAlertView; @class AWEFeedViewCell; @class UIAlertView; @class NSArray; @class HTSLiveFreeCellGiftMessage; @class HTSLiveDiggMessage; @class AWEUserDetailViewController; @class DYSMSLoginV2Step1ViewController; @class HTSLiveGiftMessage; @class AppDelegate; @class AWEFeedRootViewController; @class TTNetworkManagerChromium; @class HTSLiveScreenChatMessage; @class AWEFeedTableViewController; @class AWECommentListViewController; @class AWEGrowingTextView; @class BDTuringVerifyView; @class IESAntiSpam; @class AWEShareTokenNoteCardView; 
static void (*_logos_orig$_ungrouped$AppDelegate$applicationDidBecomeActive$)(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static void _logos_method$_ungrouped$AppDelegate$applicationDidBecomeActive$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static void (*_logos_orig$_ungrouped$AppDelegate$applicationDidEnterBackground$)(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static void _logos_method$_ungrouped$AppDelegate$applicationDidEnterBackground$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static void (*_logos_orig$_ungrouped$AppDelegate$applicationWillTerminate$)(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static void _logos_method$_ungrouped$AppDelegate$applicationWillTerminate$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static BOOL _logos_method$_ungrouped$AppDelegate$getUserLogined(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWEFeedTableViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL AWEFeedTableViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFeedTableViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWEFeedTableViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWECommentListViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL AWECommentListViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWECommentListViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWECommentListViewController* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$AWEFeedSegmentedControl$compareCurrentVc$(_LOGOS_SELF_TYPE_NORMAL AWEFeedSegmentedControl* _LOGOS_SELF_CONST, SEL, UIViewController *); static void (*_logos_orig$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$)(_LOGOS_SELF_TYPE_NORMAL NHAccountManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id, id, id); static void _logos_method$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$(_LOGOS_SELF_TYPE_NORMAL NHAccountManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id, id, id); static AWETabBarPlusButton* (*_logos_orig$_ungrouped$AWETabBarPlusButton$initWithFrame$)(_LOGOS_SELF_TYPE_INIT AWETabBarPlusButton*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static AWETabBarPlusButton* _logos_method$_ungrouped$AWETabBarPlusButton$initWithFrame$(_LOGOS_SELF_TYPE_INIT AWETabBarPlusButton*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static SKStoreProductViewController* (*_logos_orig$_ungrouped$SKStoreProductViewController$init)(_LOGOS_SELF_TYPE_INIT SKStoreProductViewController*, SEL) _LOGOS_RETURN_RETAINED; static SKStoreProductViewController* _logos_method$_ungrouped$SKStoreProductViewController$init(_LOGOS_SELF_TYPE_INIT SKStoreProductViewController*, SEL) _LOGOS_RETURN_RETAINED; static UIAlertView* (*_logos_orig$_ungrouped$UIAlertView$init)(_LOGOS_SELF_TYPE_INIT UIAlertView*, SEL) _LOGOS_RETURN_RETAINED; static UIAlertView* _logos_method$_ungrouped$UIAlertView$init(_LOGOS_SELF_TYPE_INIT UIAlertView*, SEL) _LOGOS_RETURN_RETAINED; static UIAlertController* (*_logos_orig$_ungrouped$UIAlertController$init)(_LOGOS_SELF_TYPE_INIT UIAlertController*, SEL) _LOGOS_RETURN_RETAINED; static UIAlertController* _logos_method$_ungrouped$UIAlertController$init(_LOGOS_SELF_TYPE_INIT UIAlertController*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$AWEFeedViewCell$configureWithModel$)(_LOGOS_SELF_TYPE_NORMAL AWEFeedViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEFeedViewCell$configureWithModel$(_LOGOS_SELF_TYPE_NORMAL AWEFeedViewCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$AWEFeedViewCell$configWithModel$)(_LOGOS_SELF_TYPE_NORMAL AWEFeedViewCell* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEFeedViewCell$configWithModel$(_LOGOS_SELF_TYPE_NORMAL AWEFeedViewCell* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$AWEFeedContainerViewController$didFinishLogin)(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFeedContainerViewController$didFinishLogin(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWEFeedContainerViewController$setSegmentControl$)(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEFeedContainerViewController$setSegmentControl$(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$DYAddressBookViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL DYAddressBookViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYAddressBookViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DYAddressBookViewController* _LOGOS_SELF_CONST, SEL); static AWEAwemePlayInteractionPresenter* (*_logos_orig$_ungrouped$AWEAwemePlayInteractionPresenter$init)(_LOGOS_SELF_TYPE_INIT AWEAwemePlayInteractionPresenter*, SEL) _LOGOS_RETURN_RETAINED; static AWEAwemePlayInteractionPresenter* _logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$init(_LOGOS_SELF_TYPE_INIT AWEAwemePlayInteractionPresenter*, SEL) _LOGOS_RETURN_RETAINED; static void _logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$notificationDidReciveForDY$(_LOGOS_SELF_TYPE_NORMAL AWEAwemePlayInteractionPresenter* _LOGOS_SELF_CONST, SEL, NSNotification *); static void (*_logos_orig$_ungrouped$AWEGrowingTextView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEGrowingTextView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEGrowingTextView$textViewbecomeFirstRespond$(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST, SEL, NSNotification *); static AWEShareTokenNoteCardView* (*_logos_orig$_ungrouped$AWEShareTokenNoteCardView$init)(_LOGOS_SELF_TYPE_INIT AWEShareTokenNoteCardView*, SEL) _LOGOS_RETURN_RETAINED; static AWEShareTokenNoteCardView* _logos_method$_ungrouped$AWEShareTokenNoteCardView$init(_LOGOS_SELF_TYPE_INIT AWEShareTokenNoteCardView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$AWEShareTokenNoteCardView$setupUI)(_LOGOS_SELF_TYPE_NORMAL AWEShareTokenNoteCardView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEShareTokenNoteCardView$setupUI(_LOGOS_SELF_TYPE_NORMAL AWEShareTokenNoteCardView* _LOGOS_SELF_CONST, SEL); static AWESearchBar* (*_logos_orig$_ungrouped$AWESearchBar$initWithFrame$)(_LOGOS_SELF_TYPE_INIT AWESearchBar*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static AWESearchBar* _logos_method$_ungrouped$AWESearchBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT AWESearchBar*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static void _logos_method$_ungrouped$AWESearchBar$textViewDidplast$(_LOGOS_SELF_TYPE_NORMAL AWESearchBar* _LOGOS_SELF_CONST, SEL, NSNotification *); static void (*_logos_orig$_ungrouped$AWEFamiliarAlertPopupView$setupUI)(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFamiliarAlertPopupView$setupUI(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFamiliarAlertPopupView$popViewShouldDissMiss(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible)(_LOGOS_SELF_TYPE_NORMAL AWEAlertWindowManager* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible(_LOGOS_SELF_TYPE_NORMAL AWEAlertWindowManager* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$)(_LOGOS_SELF_TYPE_NORMAL BDTuringVerifyView* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$(_LOGOS_SELF_TYPE_NORMAL BDTuringVerifyView* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$)(_LOGOS_SELF_TYPE_NORMAL AWEProfileHeaderExtraViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$(_LOGOS_SELF_TYPE_NORMAL AWEProfileHeaderExtraViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit)(_LOGOS_SELF_TYPE_NORMAL AWEAccountPrivacyAndUserItemAlertView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit(_LOGOS_SELF_TYPE_NORMAL AWEAccountPrivacyAndUserItemAlertView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DYPhoneNumberInputView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL DYPhoneNumberInputView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYPhoneNumberInputView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL DYPhoneNumberInputView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL DYSMSLoginV2Step1ViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DYSMSLoginV2Step1ViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DYUserProtocolView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL DYUserProtocolView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYUserProtocolView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL DYUserProtocolView* _LOGOS_SELF_CONST, SEL); static AWEUIAlertView* (*_logos_orig$_ungrouped$AWEUIAlertView$init)(_LOGOS_SELF_TYPE_INIT AWEUIAlertView*, SEL) _LOGOS_RETURN_RETAINED; static AWEUIAlertView* _logos_method$_ungrouped$AWEUIAlertView$init(_LOGOS_SELF_TYPE_INIT AWEUIAlertView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$AWEUploadContactAlertView$loadSubviews)(_LOGOS_SELF_TYPE_NORMAL AWEUploadContactAlertView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEUploadContactAlertView$loadSubviews(_LOGOS_SELF_TYPE_NORMAL AWEUploadContactAlertView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$IESLiveMessageClient$didRecieveMessages$)(_LOGOS_SELF_TYPE_NORMAL IESLiveMessageClient* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$IESLiveMessageClient$didRecieveMessages$(_LOGOS_SELF_TYPE_NORMAL IESLiveMessageClient* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$)(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST, SEL, id, id, id, _Bool, id, Class, Class, _Bool, _Bool, _Bool, id, void(^)(id,id), id); static id _logos_method$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST, SEL, id, id, id, _Bool, id, Class, Class, _Bool, _Bool, _Bool, id, void(^)(id,id), id); static id (*_logos_orig$_ungrouped$IESAntiSpam$sgm_encryptWithURL$msg$)(_LOGOS_SELF_TYPE_NORMAL IESAntiSpam* _LOGOS_SELF_CONST, SEL, NSURL *, id); static id _logos_method$_ungrouped$IESAntiSpam$sgm_encryptWithURL$msg$(_LOGOS_SELF_TYPE_NORMAL IESAntiSpam* _LOGOS_SELF_CONST, SEL, NSURL *, id); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveRoomMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveRoomMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveRoomUserSeqMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveRoomUserSeqMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWELanguageSelectionPopupManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWELanguageSelectionPopupManager"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEFeedRootViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEFeedRootViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveGiftMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveGiftMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveMemberMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveMemberMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveScreenChatMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveScreenChatMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveChatMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveChatMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEAwemeDetailTableViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEAwemeDetailTableViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveLiveEcomMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveLiveEcomMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DYQuickLoginLoadingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DYQuickLoginLoadingViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEUserDetailViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEUserDetailViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveDiggMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveDiggMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveFreeCellGiftMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveFreeCellGiftMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEUserProfileSlidingScrollView(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEUserProfileSlidingScrollView"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NSArray(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NSArray"); } return _klass; }
#line 21 "/Users/apple/Desktop/MYDYHelper/MYDYHelper/MYDYHelper.xm"
int a =0;

static void _logos_method$_ungrouped$AppDelegate$applicationDidBecomeActive$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application) {


    [[UIApplication sharedApplication] setIdleTimerDisabled: YES];

    return _logos_orig$_ungrouped$AppDelegate$applicationDidBecomeActive$(self, _cmd, application);
}

static void _logos_method$_ungrouped$AppDelegate$applicationDidEnterBackground$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application) {
    
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:nil];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        
         [[DYFeedManager sharedQueue] feedTaskDidFinsh];
        
    });

    
    NSLog(@"AAAAAAAAAAAA applicationDidEnterBackground");
}

static void _logos_method$_ungrouped$AppDelegate$applicationWillTerminate$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application) {
    NSLog(@"AAAAAAAAAAAA  applicationWillTerminate");





    
    [[DYFeedManager sharedQueue] feedTaskDidFinsh];

}



static BOOL _logos_method$_ungrouped$AppDelegate$getUserLogined(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    BOOL re =[[_logos_static_class_lookup$AWELanguageSelectionPopupManager() sharedInstance] userLogined];
    return re;
}



static void _logos_method$_ungrouped$AWEFeedTableViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWEFeedTableViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    [[LGWeChatParamQueue sharedQueue] delyStartTheTask];

    return _logos_orig$_ungrouped$AWEFeedTableViewController$viewDidLoad(self, _cmd);
}







static void _logos_method$_ungrouped$AWECommentListViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWECommentListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    HBLogDebug(@"-[<AWECommentListViewController: %p> viewDidLoad]", self);

    
    return  _logos_orig$_ungrouped$AWECommentListViewController$viewDidLoad(self, _cmd);
}








static NSString * _logos_method$_ungrouped$AWEFeedSegmentedControl$compareCurrentVc$(_LOGOS_SELF_TYPE_NORMAL AWEFeedSegmentedControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIViewController * vc){
    
    if([vc isKindOfClass:_logos_static_class_lookup$DYQuickLoginLoadingViewController()]){
        return @"1";

    }else if([vc isKindOfClass:_logos_static_class_lookup$AWEAwemeDetailTableViewController()]){
        return @"2";

    }else if([vc isKindOfClass:_logos_static_class_lookup$AWEUserProfileSlidingScrollView()]){
        return @"3";

    }else if([vc isKindOfClass:_logos_static_class_lookup$AWEFeedRootViewController()]){
        return @"4";

    }else if([vc isKindOfClass:_logos_static_class_lookup$AWEUserDetailViewController()]){
        return @"5";

    }

    return @"0";
}




static void _logos_method$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$(_LOGOS_SELF_TYPE_NORMAL NHAccountManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, id arg2, id arg3, id arg4){
    return  _logos_orig$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$(self, _cmd, arg1, arg2, arg3, arg4);
}





static AWETabBarPlusButton* _logos_method$_ungrouped$AWETabBarPlusButton$initWithFrame$(_LOGOS_SELF_TYPE_INIT AWETabBarPlusButton* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED{
    if([DYTaskManager sharedQueue].model){
           [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(buttonClicked) name:kNotificationAddPlusBtnClick object:nil];
    }

    return  _logos_orig$_ungrouped$AWETabBarPlusButton$initWithFrame$(self, _cmd, arg1);
}





static SKStoreProductViewController* _logos_method$_ungrouped$SKStoreProductViewController$init(_LOGOS_SELF_TYPE_INIT SKStoreProductViewController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    return nil;
}




static UIAlertView* _logos_method$_ungrouped$UIAlertView$init(_LOGOS_SELF_TYPE_INIT UIAlertView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    return nil;
}




static UIAlertController* _logos_method$_ungrouped$UIAlertController$init(_LOGOS_SELF_TYPE_INIT UIAlertController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    return nil;
}






static void _logos_method$_ungrouped$AWEFeedViewCell$configureWithModel$(_LOGOS_SELF_TYPE_NORMAL AWEFeedViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){

    [DYVcManager sharedQueue].data =arg1;
    HBLogDebug(@"-[<AWEFeedViewCell: %p> configureWithModel:%@]", self, arg1);
    return  _logos_orig$_ungrouped$AWEFeedViewCell$configureWithModel$(self, _cmd, arg1);
}
static void _logos_method$_ungrouped$AWEFeedViewCell$configWithModel$(_LOGOS_SELF_TYPE_NORMAL AWEFeedViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    HBLogDebug(@"-[<AWEFeedViewCell: %p> configWithModel:%@]", self, arg1);
    return  _logos_orig$_ungrouped$AWEFeedViewCell$configWithModel$(self, _cmd, arg1);
}




static void _logos_method$_ungrouped$AWEFeedContainerViewController$didFinishLogin(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){

    [[DYLoginManager sharedQueue]  loginSuccess];
    return  _logos_orig$_ungrouped$AWEFeedContainerViewController$didFinishLogin(self, _cmd);
}

static void _logos_method$_ungrouped$AWEFeedContainerViewController$setSegmentControl$(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id segmentControl){
    [DYVcManager sharedQueue].selectVc = segmentControl;
    
    return  _logos_orig$_ungrouped$AWEFeedContainerViewController$setSegmentControl$(self, _cmd, segmentControl);

}





static void _logos_method$_ungrouped$DYAddressBookViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DYAddressBookViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(skipAction) withObject:nil afterDelay:1];
    }

    return  _logos_orig$_ungrouped$DYAddressBookViewController$viewDidLoad(self, _cmd);
}





static AWEAwemePlayInteractionPresenter* _logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$init(_LOGOS_SELF_TYPE_INIT AWEAwemePlayInteractionPresenter* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationDidReciveForDY:) name:kNotificationUserCenterRecived object:nil];
    });
    
    return  _logos_orig$_ungrouped$AWEAwemePlayInteractionPresenter$init(self, _cmd);
}


static void _logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$notificationDidReciveForDY$(_LOGOS_SELF_TYPE_NORMAL AWEAwemePlayInteractionPresenter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * arg1){
    NSLog(@"sssss  收到跳转");

    UINavigationController *nav =(UINavigationController*)[[self viewController] navigationController];
    AWEUserDetailViewController *vc =[_logos_static_class_lookup$AWEUserDetailViewController() new];
    vc.userID = arg1.userInfo[@"UserID"];
    [nav pushViewController:vc animated:YES];
}




static void _logos_method$_ungrouped$AWEGrowingTextView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    if([DYTaskManager sharedQueue].model){
           [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewbecomeFirstRespond:) name:kNotificationCommentsRecived object:nil];
    }

    return  _logos_orig$_ungrouped$AWEGrowingTextView$setBackgroundColor$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$AWEGrowingTextView$textViewbecomeFirstRespond$(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * arg1){
    [self.internalTextView becomeFirstResponder];
    NSString *loadPathStr = arg1.userInfo[@"key"];
    [self.internalTextView setText: loadPathStr ];
}






static AWEShareTokenNoteCardView* _logos_method$_ungrouped$AWEShareTokenNoteCardView$init(_LOGOS_SELF_TYPE_INIT AWEShareTokenNoteCardView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    return _logos_orig$_ungrouped$AWEShareTokenNoteCardView$init(self, _cmd);
}


static void _logos_method$_ungrouped$AWEShareTokenNoteCardView$setupUI(_LOGOS_SELF_TYPE_NORMAL AWEShareTokenNoteCardView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([DYTaskManager sharedQueue].model.task_id.intValue == 10001){
        [[DYLikeManager sharedQueue] tapTheShareViewToEnterTheheMovieView];
        NSLog(@"DYLikeManager  orig = DYLikeManager");
    }else if([DYTaskManager sharedQueue].model.task_id.intValue == 60001){
        [[DYCommentManager sharedQueue] tapTheShareViewToEnterTheMovieViewAndComment];
    }
    return _logos_orig$_ungrouped$AWEShareTokenNoteCardView$setupUI(self, _cmd);
    
}





static AWESearchBar* _logos_method$_ungrouped$AWESearchBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT AWESearchBar* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidplast:) name:kNotificationDidTapPlastBoard object:nil];
    return  _logos_orig$_ungrouped$AWESearchBar$initWithFrame$(self, _cmd, arg1);
}


static void _logos_method$_ungrouped$AWESearchBar$textViewDidplast$(_LOGOS_SELF_TYPE_NORMAL AWESearchBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSNotification * arg1){
    NSString *loadPathStr = arg1.userInfo[@"key"];
    
    self.ownSearchField.text =loadPathStr;
}






static void _logos_method$_ungrouped$AWEFamiliarAlertPopupView$setupUI(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(popViewShouldDissMiss) withObject:nil afterDelay:1];
    }

    return  _logos_orig$_ungrouped$AWEFamiliarAlertPopupView$setupUI(self, _cmd);
}


static void _logos_method$_ungrouped$AWEFamiliarAlertPopupView$popViewShouldDissMiss(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if(self.tapCloseBtnBlock){
        self.tapCloseBtnBlock();
    }
}




static void _logos_method$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible(_LOGOS_SELF_TYPE_NORMAL AWEAlertWindowManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(dismiss) withObject:nil afterDelay:1];
    }
    return  _logos_orig$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible(self, _cmd);

}




static void _logos_method$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$(_LOGOS_SELF_TYPE_NORMAL BDTuringVerifyView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2){
    DYTaskModel *model = [DYTaskManager sharedQueue].model;
    if (model.task_id){
        CGRect smallRect = self.webView.frame ;
        [DYLoginManager sharedQueue].imageFrame =smallRect;
        [DYLoginManager sharedQueue].screenWebView =self.webView;
    }
    _logos_orig$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$(self, _cmd, arg1, arg2);

}



static void _logos_method$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$(_LOGOS_SELF_TYPE_NORMAL AWEProfileHeaderExtraViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    _logos_orig$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$(self, _cmd, arg1);
}




static void _logos_method$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit(_LOGOS_SELF_TYPE_NORMAL AWEAccountPrivacyAndUserItemAlertView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([DYTaskManager sharedQueue].model){
           [self performSelector:@selector(confirmButtonDidTap) withObject:nil afterDelay:1];
    }

    _logos_orig$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit(self, _cmd);
}







static void _logos_method$_ungrouped$DYPhoneNumberInputView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL DYPhoneNumberInputView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if([[DYTaskManager sharedQueue].model account_name]){
        SHSPhoneTextField *textField=   [self textField];
        textField.text =[[DYTaskManager sharedQueue].model account_name];
        [self didChangeValue];
    }
    _logos_orig$_ungrouped$DYPhoneNumberInputView$layoutSubviews(self, _cmd);
}




static void _logos_method$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DYSMSLoginV2Step1ViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYTaskManager sharedQueue].model account_name]){
        DYTaskModel *model = [DYTaskManager sharedQueue].model;
          if (model.task_id){
              [self performSelector:@selector(loginAction:) withObject:nil afterDelay:1];
          }
        
    }
    return _logos_orig$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad(self, _cmd);
}





static void _logos_method$_ungrouped$DYUserProtocolView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL DYUserProtocolView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if([DYTaskManager sharedQueue].model){
        UIButton *btn= [self selectButton];
        btn.selected = YES;
        [self performSelector:@selector(selectAction) withObject:nil afterDelay:1];
    }
    return _logos_orig$_ungrouped$DYUserProtocolView$layoutSubviews(self, _cmd);
}





static AWEUIAlertView* _logos_method$_ungrouped$AWEUIAlertView$init(_LOGOS_SELF_TYPE_INIT AWEUIAlertView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED{
    if([DYTaskManager sharedQueue].model){
        [self performSelector:@selector(dismissSelfDefineAlert) withObject:nil afterDelay:0.2];
           if(([DYTaskManager sharedQueue].model.task_id.intValue == 30001)){
               NSLog(@"AWEUIAlertViewddddddddddd");
               [self performSelector:@selector(dismiss:) withObject:nil afterDelay:0.2];
           }else{
               [self performSelector:@selector(dismissSelfDefineAlert) withObject:nil afterDelay:0.2];
           }
       }
   
    return _logos_orig$_ungrouped$AWEUIAlertView$init(self, _cmd);
}





static void _logos_method$_ungrouped$AWEUploadContactAlertView$loadSubviews(_LOGOS_SELF_TYPE_NORMAL AWEUploadContactAlertView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([DYTaskManager sharedQueue].model){
        if(([DYTaskManager sharedQueue].model.task_id.intValue == 30001)){
            NSLog(@"AWEUploadContactAlertViewddddddddddd");
            [self performSelector:@selector(dismissAlertView) withObject:nil afterDelay:1];
        }
    }

    return _logos_orig$_ungrouped$AWEUploadContactAlertView$loadSubviews(self, _cmd);
}







static void _logos_method$_ungrouped$IESLiveMessageClient$didRecieveMessages$(_LOGOS_SELF_TYPE_NORMAL IESLiveMessageClient* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    
    if([arg1 isKindOfClass:_logos_static_class_lookup$NSArray()]){
        NSArray *mesgArray =arg1;
        for (id reu in mesgArray) {
            if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveChatMessage()]){
                HTSLiveChatMessage *re =(HTSLiveChatMessage *)reu;
                NSLog(@"HTSLiveChatMessageCCCCCCCCCCCC = %@",re.content);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveRoomMessage()]){
                HTSLiveRoomMessage *re =(HTSLiveRoomMessage *)reu;
                NSLog(@"HTSLiveRoomMessageGGGGGGGGGGGG = %@",re.content);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveRoomUserSeqMessage()]){
                HTSLiveRoomUserSeqMessage *re =(HTSLiveRoomUserSeqMessage *)reu;
                NSLog(@"HTSLiveRoomUserSeqMessageRRRRRRRRRRR = %@",re.common);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveGiftMessage()]){
                HTSLiveGiftMessage *re =(HTSLiveGiftMessage *)reu;
                NSLog(@"HTSLiveGiftMessageGGGGGGGGGGGG = %@",re.common.displayText);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveMemberMessage()]){
                HTSLiveMemberMessage *re =(HTSLiveMemberMessage *)reu;
                NSLog(@"HTSLiveMemberMessageMMMMMMMMMM = %@",re.anchorDisplayText);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveDiggMessage()]){
                HTSLiveDiggMessage *re =(HTSLiveDiggMessage *)reu;
                NSLog(@"HTSLiveDiggMessageGGGGGGGGGGGG = %@",re.common);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveScreenChatMessage()]){
                HTSLiveScreenChatMessage *re =(HTSLiveScreenChatMessage *)reu;
                NSLog(@"HTSLiveScreenChatMessageGGGGGGGGGGGG = %@",re.content);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveFreeCellGiftMessage()]){
                HTSLiveFreeCellGiftMessage *re =(HTSLiveFreeCellGiftMessage *)reu;
                NSLog(@"HTSLiveFreeCellGiftMessageGGGGGGGGGGGG = %@",re.common);
            }else if([reu isKindOfClass:_logos_static_class_lookup$HTSLiveLiveEcomMessage()]){
                HTSLiveLiveEcomMessage *re =(HTSLiveLiveEcomMessage *)reu;
                NSLog(@"HTSLiveLiveEcomMessageGGGGGGGGGGGG = %@",re.common);
            }

        }

    }
    return _logos_orig$_ungrouped$IESLiveMessageClient$didRecieveMessages$(self, _cmd, arg1);
}





static id _logos_method$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, _Bool arg4, id arg5, Class arg6, Class arg7, _Bool arg8, _Bool arg9, _Bool arg10, id arg11, void(^arg12)(id,id), id arg13){

        NSString *url = arg1;

        id myCallBackzbb = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];










            NSLog(@"sssss  获取数据");

            [DYLiveManager sharedQueue].onlineData=re;


        };

        id myCallBackUserInfo = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];
            NSString *hasData =block_arg2?@"1":@"0";
            resu[@"hasdata"] = hasData;

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"1"};
            [[DYGetDataManager sharedQueue] configDataWithDic:resu];
            NSLog(@"GGGGGGfffGGGG %@ \n %@",arg1,arg2);
        };

        id myCallBackUserPost = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];
            NSString *hasData =block_arg2?@"1":@"0";
            resu[@"hasdata"] = hasData;
            resu[@"param_array"] = @{@"allData":re,@"report_type":@"2"};
            [[DYGetDataManager sharedQueue] configDataWithDic:resu];
            
            NSLog(@"requestForfffdfsdfJSONWithURL_  orig = %@  %d " ,arg1,(a +1));

        };

        id myCallBackUserForward = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"4"};
            [[DYGetDataManager sharedQueue] configDataWithDic:resu];
        };

        
        id myCallBackUserFavorite = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"3"};
            [[DYGetDataManager sharedQueue] configDataWithDic:resu];
        };

        
        
        id myCallBackbagnList = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"5"};


        };


        id myCallBackProductList = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"6"};


        };

        id myCallBackProductInfo = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"7"};


        };

        id myCallBackOnlineInfo = ^(id block_arg1,id block_arg2){
            arg12(block_arg1,block_arg2);
            NSMutableDictionary *resu = [[NSMutableDictionary alloc]init];
            id  re = block_arg2?block_arg2:[[NSMutableDictionary alloc]init];

            resu[@"param_array"] = @{@"allData":re,@"report_type":@"8"};


        };






        if([url containsString :@"https://webcast.amemv.com/webcast/ranklist/hot/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackzbb,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/user/profile/other/"]){

            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserInfo,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/forward/list/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserForward,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/aweme/post/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserPost,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/aweme/favorite/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserFavorite,arg13);
        }else if([url containsString :@"https://webcast.amemv.com/webcast/user/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackbagnList,arg13);
        }else if([url containsString :@"https://webcast.amemv.com/webcast/ranklist/room"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackbagnList,arg13);
        }else if([url containsString :@"https://mon.snssdk.com/monitor/collect"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackOnlineInfo,arg13);
    

        }else if([url containsString :@"    https://lianmengapi.snssdk.com/live/promotions"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackProductList,arg13);
        }else if([url containsString :@"    https://aweme.snssdk.com/aweme/v2/shop/promotion/dynamic/info"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackProductInfo,arg13);
        }else{
            return _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13);
        }




    
        if([url containsString :@"https://webcast.amemv.com/webcast/ranklist/hot/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackzbb,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/user/profile/other/"]){

            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserInfo,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/forward/list/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserForward,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/aweme/post/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserPost,arg13);
        }else if([url containsString :@"https://aweme.snssdk.com/aweme/v1/aweme/favorite/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackUserFavorite,arg13);
        }else if([url containsString :@"https://webcast.amemv.com/webcast/user/"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackbagnList,arg13);
        }else if([url containsString :@"https://webcast.amemv.com/webcast/ranklist/room"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackbagnList,arg13);
        }else if([url containsString :@"https://mon.snssdk.com/monitor/collect"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackOnlineInfo,arg13);
    

        }else if([url containsString :@"    https://lianmengapi.snssdk.com/live/promotions"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackProductList,arg13);
        }else if([url containsString :@"    https://aweme.snssdk.com/aweme/v2/shop/promotion/dynamic/info"]){
            return  _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,myCallBackProductInfo,arg13);
        }else{
            return _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13);
        }


}




static id _logos_method$_ungrouped$IESAntiSpam$sgm_encryptWithURL$msg$(_LOGOS_SELF_TYPE_NORMAL IESAntiSpam* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURL * arg1, id arg2){
    HBLogDebug(@"-[<IESAntiSpam: %p> sgm_encryptWithURL:%@ msg:%@]", self, arg1, arg2);
    id result =_logos_orig$_ungrouped$IESAntiSpam$sgm_encryptWithURL$msg$(self, _cmd, arg1, arg2);
    


    return result;
    
}

























































































































































































































































































































static CFTypeRef (*orig_MGCopyAnswer)(CFStringRef str);
static CFTypeRef (*orig_MGCopyAnswer_internal)(CFStringRef str, uint32_t* outTypeCode);
static int (*orig_uname)(struct utsname *);

CFTypeRef new_MGCopyAnswer(CFStringRef str);
CFTypeRef new_MGCopyAnswer_internal(CFStringRef str, uint32_t* outTypeCode);
int new_uname(struct utsname *systemInfo);

int new_uname(struct utsname * systemInfo){
    
    int nRet = orig_uname(systemInfo);
    
    char str_machine_name[100] = "iPhone8,1";
    strcpy(systemInfo->machine,str_machine_name);
    return nRet;
}

CFTypeRef new_MGCopyAnswer(CFStringRef str){
    
    
    
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
        
        
        
        
        
        uint8_t MGCopyAnswer_arm64_impl[8] = {0x01, 0x00, 0x80, 0xd2, 0x01, 0x00, 0x00, 0x14};
        
        uint8_t MGCopyAnswer_armv7_10_3_3_impl[5] = {0x21, 0x00, 0xf0, 0x00, 0xb8};
        
        
        if (memcmp(MGCopyAnswerFn, MGCopyAnswer_arm64_impl, 8) == 0) {
            
            MSHookFunction((void*)((uint8_t*)MGCopyAnswerFn + 8), (void*)new_MGCopyAnswer_internal,
                           (void**)&orig_MGCopyAnswer_internal);
        }
        
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
    
    location.latitude = 35.98866425;
    
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

static __attribute__((constructor)) void _logosLocalCtor_51853d81(int __unused argc, char __unused **argv, char __unused **envp){
    
    NSUserDefaults*userDefaults= [NSUserDefaults  standardUserDefaults];
    NSString *refresh = [userDefaults objectForKey:@"kUserNeedRefresh"];
    [[NSUserDefaults  standardUserDefaults] setObject:nil forKey:@"kLastGetDataTime"];
    if(refresh){
        
        [[NSUserDefaults  standardUserDefaults] setObject:nil forKey:@"kUserNeedRefresh"];

        [[LGWeChatParamQueue sharedQueue] clearCookies];
        
        [[LGWeChatParamQueue sharedQueue] clearUserDefaults];
        

        [[LGWeChatParamQueue sharedQueue] clearKeyChain];
        [LGWeChatParamQueue sharedQueue].justClear = YES;
    }
  










    
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AppDelegate = objc_getClass("AppDelegate"); MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(applicationDidBecomeActive:), (IMP)&_logos_method$_ungrouped$AppDelegate$applicationDidBecomeActive$, (IMP*)&_logos_orig$_ungrouped$AppDelegate$applicationDidBecomeActive$);MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(applicationDidEnterBackground:), (IMP)&_logos_method$_ungrouped$AppDelegate$applicationDidEnterBackground$, (IMP*)&_logos_orig$_ungrouped$AppDelegate$applicationDidEnterBackground$);MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(applicationWillTerminate:), (IMP)&_logos_method$_ungrouped$AppDelegate$applicationWillTerminate$, (IMP*)&_logos_orig$_ungrouped$AppDelegate$applicationWillTerminate$);{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AppDelegate, @selector(getUserLogined), (IMP)&_logos_method$_ungrouped$AppDelegate$getUserLogined, _typeEncoding); }Class _logos_class$_ungrouped$AWEFeedTableViewController = objc_getClass("AWEFeedTableViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEFeedTableViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$AWEFeedTableViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$AWEFeedTableViewController$viewDidLoad);Class _logos_class$_ungrouped$AWECommentListViewController = objc_getClass("AWECommentListViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWECommentListViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$AWECommentListViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$AWECommentListViewController$viewDidLoad);Class _logos_class$_ungrouped$AWEFeedSegmentedControl = objc_getClass("AWEFeedSegmentedControl"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIViewController *), strlen(@encode(UIViewController *))); i += strlen(@encode(UIViewController *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEFeedSegmentedControl, @selector(compareCurrentVc:), (IMP)&_logos_method$_ungrouped$AWEFeedSegmentedControl$compareCurrentVc$, _typeEncoding); }Class _logos_class$_ungrouped$NHAccountManager = objc_getClass("NHAccountManager"); MSHookMessageEx(_logos_class$_ungrouped$NHAccountManager, @selector(handleLoginSuccess:verificationInfo:params:completion:), (IMP)&_logos_method$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$, (IMP*)&_logos_orig$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$);Class _logos_class$_ungrouped$AWETabBarPlusButton = objc_getClass("AWETabBarPlusButton"); MSHookMessageEx(_logos_class$_ungrouped$AWETabBarPlusButton, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$AWETabBarPlusButton$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$AWETabBarPlusButton$initWithFrame$);Class _logos_class$_ungrouped$SKStoreProductViewController = objc_getClass("SKStoreProductViewController"); MSHookMessageEx(_logos_class$_ungrouped$SKStoreProductViewController, @selector(init), (IMP)&_logos_method$_ungrouped$SKStoreProductViewController$init, (IMP*)&_logos_orig$_ungrouped$SKStoreProductViewController$init);Class _logos_class$_ungrouped$UIAlertView = objc_getClass("UIAlertView"); MSHookMessageEx(_logos_class$_ungrouped$UIAlertView, @selector(init), (IMP)&_logos_method$_ungrouped$UIAlertView$init, (IMP*)&_logos_orig$_ungrouped$UIAlertView$init);Class _logos_class$_ungrouped$UIAlertController = objc_getClass("UIAlertController"); MSHookMessageEx(_logos_class$_ungrouped$UIAlertController, @selector(init), (IMP)&_logos_method$_ungrouped$UIAlertController$init, (IMP*)&_logos_orig$_ungrouped$UIAlertController$init);Class _logos_class$_ungrouped$AWEFeedViewCell = objc_getClass("AWEFeedViewCell"); MSHookMessageEx(_logos_class$_ungrouped$AWEFeedViewCell, @selector(configureWithModel:), (IMP)&_logos_method$_ungrouped$AWEFeedViewCell$configureWithModel$, (IMP*)&_logos_orig$_ungrouped$AWEFeedViewCell$configureWithModel$);MSHookMessageEx(_logos_class$_ungrouped$AWEFeedViewCell, @selector(configWithModel:), (IMP)&_logos_method$_ungrouped$AWEFeedViewCell$configWithModel$, (IMP*)&_logos_orig$_ungrouped$AWEFeedViewCell$configWithModel$);Class _logos_class$_ungrouped$AWEFeedContainerViewController = objc_getClass("AWEFeedContainerViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEFeedContainerViewController, @selector(didFinishLogin), (IMP)&_logos_method$_ungrouped$AWEFeedContainerViewController$didFinishLogin, (IMP*)&_logos_orig$_ungrouped$AWEFeedContainerViewController$didFinishLogin);MSHookMessageEx(_logos_class$_ungrouped$AWEFeedContainerViewController, @selector(setSegmentControl:), (IMP)&_logos_method$_ungrouped$AWEFeedContainerViewController$setSegmentControl$, (IMP*)&_logos_orig$_ungrouped$AWEFeedContainerViewController$setSegmentControl$);Class _logos_class$_ungrouped$DYAddressBookViewController = objc_getClass("DYAddressBookViewController"); MSHookMessageEx(_logos_class$_ungrouped$DYAddressBookViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$DYAddressBookViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$DYAddressBookViewController$viewDidLoad);Class _logos_class$_ungrouped$AWEAwemePlayInteractionPresenter = objc_getClass("AWEAwemePlayInteractionPresenter"); MSHookMessageEx(_logos_class$_ungrouped$AWEAwemePlayInteractionPresenter, @selector(init), (IMP)&_logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$init, (IMP*)&_logos_orig$_ungrouped$AWEAwemePlayInteractionPresenter$init);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEAwemePlayInteractionPresenter, @selector(notificationDidReciveForDY:), (IMP)&_logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$notificationDidReciveForDY$, _typeEncoding); }Class _logos_class$_ungrouped$AWEGrowingTextView = objc_getClass("AWEGrowingTextView"); MSHookMessageEx(_logos_class$_ungrouped$AWEGrowingTextView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$AWEGrowingTextView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$AWEGrowingTextView$setBackgroundColor$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEGrowingTextView, @selector(textViewbecomeFirstRespond:), (IMP)&_logos_method$_ungrouped$AWEGrowingTextView$textViewbecomeFirstRespond$, _typeEncoding); }Class _logos_class$_ungrouped$AWEShareTokenNoteCardView = objc_getClass("AWEShareTokenNoteCardView"); MSHookMessageEx(_logos_class$_ungrouped$AWEShareTokenNoteCardView, @selector(init), (IMP)&_logos_method$_ungrouped$AWEShareTokenNoteCardView$init, (IMP*)&_logos_orig$_ungrouped$AWEShareTokenNoteCardView$init);MSHookMessageEx(_logos_class$_ungrouped$AWEShareTokenNoteCardView, @selector(setupUI), (IMP)&_logos_method$_ungrouped$AWEShareTokenNoteCardView$setupUI, (IMP*)&_logos_orig$_ungrouped$AWEShareTokenNoteCardView$setupUI);Class _logos_class$_ungrouped$AWESearchBar = objc_getClass("AWESearchBar"); MSHookMessageEx(_logos_class$_ungrouped$AWESearchBar, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$AWESearchBar$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$AWESearchBar$initWithFrame$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWESearchBar, @selector(textViewDidplast:), (IMP)&_logos_method$_ungrouped$AWESearchBar$textViewDidplast$, _typeEncoding); }Class _logos_class$_ungrouped$AWEFamiliarAlertPopupView = objc_getClass("AWEFamiliarAlertPopupView"); MSHookMessageEx(_logos_class$_ungrouped$AWEFamiliarAlertPopupView, @selector(setupUI), (IMP)&_logos_method$_ungrouped$AWEFamiliarAlertPopupView$setupUI, (IMP*)&_logos_orig$_ungrouped$AWEFamiliarAlertPopupView$setupUI);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEFamiliarAlertPopupView, @selector(popViewShouldDissMiss), (IMP)&_logos_method$_ungrouped$AWEFamiliarAlertPopupView$popViewShouldDissMiss, _typeEncoding); }Class _logos_class$_ungrouped$AWEAlertWindowManager = objc_getClass("AWEAlertWindowManager"); MSHookMessageEx(_logos_class$_ungrouped$AWEAlertWindowManager, @selector(makeKeyAndVisible), (IMP)&_logos_method$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible, (IMP*)&_logos_orig$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible);Class _logos_class$_ungrouped$BDTuringVerifyView = objc_getClass("BDTuringVerifyView"); MSHookMessageEx(_logos_class$_ungrouped$BDTuringVerifyView, @selector(webView:didFinishNavigation:), (IMP)&_logos_method$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$, (IMP*)&_logos_orig$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$);Class _logos_class$_ungrouped$AWEProfileHeaderExtraViewController = objc_getClass("AWEProfileHeaderExtraViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEProfileHeaderExtraViewController, @selector(relationBtnClicked:), (IMP)&_logos_method$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$, (IMP*)&_logos_orig$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$);Class _logos_class$_ungrouped$AWEAccountPrivacyAndUserItemAlertView = objc_getClass("AWEAccountPrivacyAndUserItemAlertView"); MSHookMessageEx(_logos_class$_ungrouped$AWEAccountPrivacyAndUserItemAlertView, @selector(_commonInit), (IMP)&_logos_method$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit, (IMP*)&_logos_orig$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit);Class _logos_class$_ungrouped$DYPhoneNumberInputView = objc_getClass("DYPhoneNumberInputView"); MSHookMessageEx(_logos_class$_ungrouped$DYPhoneNumberInputView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$DYPhoneNumberInputView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$DYPhoneNumberInputView$layoutSubviews);Class _logos_class$_ungrouped$DYSMSLoginV2Step1ViewController = objc_getClass("DYSMSLoginV2Step1ViewController"); MSHookMessageEx(_logos_class$_ungrouped$DYSMSLoginV2Step1ViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad);Class _logos_class$_ungrouped$DYUserProtocolView = objc_getClass("DYUserProtocolView"); MSHookMessageEx(_logos_class$_ungrouped$DYUserProtocolView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$DYUserProtocolView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$DYUserProtocolView$layoutSubviews);Class _logos_class$_ungrouped$AWEUIAlertView = objc_getClass("AWEUIAlertView"); MSHookMessageEx(_logos_class$_ungrouped$AWEUIAlertView, @selector(init), (IMP)&_logos_method$_ungrouped$AWEUIAlertView$init, (IMP*)&_logos_orig$_ungrouped$AWEUIAlertView$init);Class _logos_class$_ungrouped$AWEUploadContactAlertView = objc_getClass("AWEUploadContactAlertView"); MSHookMessageEx(_logos_class$_ungrouped$AWEUploadContactAlertView, @selector(loadSubviews), (IMP)&_logos_method$_ungrouped$AWEUploadContactAlertView$loadSubviews, (IMP*)&_logos_orig$_ungrouped$AWEUploadContactAlertView$loadSubviews);Class _logos_class$_ungrouped$IESLiveMessageClient = objc_getClass("IESLiveMessageClient"); MSHookMessageEx(_logos_class$_ungrouped$IESLiveMessageClient, @selector(didRecieveMessages:), (IMP)&_logos_method$_ungrouped$IESLiveMessageClient$didRecieveMessages$, (IMP*)&_logos_orig$_ungrouped$IESLiveMessageClient$didRecieveMessages$);Class _logos_class$_ungrouped$TTNetworkManagerChromium = objc_getClass("TTNetworkManagerChromium"); MSHookMessageEx(_logos_class$_ungrouped$TTNetworkManagerChromium, @selector(requestForJSONWithURL_:params:method:needCommonParams:headerField:requestSerializer:responseSerializer:autoResume:verifyRequest:isCustomizedCookie:callback:callbackWithResponse:dispatch_queue:), (IMP)&_logos_method$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$, (IMP*)&_logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$);Class _logos_class$_ungrouped$IESAntiSpam = objc_getClass("IESAntiSpam"); MSHookMessageEx(_logos_class$_ungrouped$IESAntiSpam, @selector(sgm_encryptWithURL:msg:), (IMP)&_logos_method$_ungrouped$IESAntiSpam$sgm_encryptWithURL$msg$, (IMP*)&_logos_orig$_ungrouped$IESAntiSpam$sgm_encryptWithURL$msg$);} }
#line 1276 "/Users/apple/Desktop/MYDYHelper/MYDYHelper/MYDYHelper.xm"
