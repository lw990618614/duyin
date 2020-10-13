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

@class OpenUDID; @class BDTuringVerifyView; @class HTSLiveRoomMessage; @class DYSMSLoginV2Step1ViewController; @class AWEUserProfileSlidingScrollView; @class AppDelegate; @class BDLogDeviceHelper; @class TTInstallKeychain; @class UTDIDOpenUDID; @class NHAccountManager; @class AWEUserDetailViewController; @class NSArray; @class TTInstallDeviceHelper; @class IESLiveMessageClient; @class IESLiveDeviceInfo; @class HTSLiveMemberMessage; @class HTSLiveRoomUserSeqMessage; @class BDADeviceHelper; @class DYAddressBookViewController; @class AWEAwemePlayInteractionPresenter; @class TTInstallOpenUDID; @class WXOMTAOpenUDID; @class ASIdentifierManager; @class AWEAlertWindowManager; @class DYQuickLoginLoadingViewController; @class DYPhoneNumberInputView; @class AWEUIAlertView; @class TTNetworkManagerChromium; @class AWEUploadContactAlertView; @class UMANUtil; @class DYUserProtocolView; @class AWEFeedTableViewController; @class AWEAwemeDetailTableViewController; @class UIDevice; @class TTExtensions; @class NSKeyedArchiver; @class AWESearchBar; @class UMANOpenUDID; @class AWEFeedRootViewController; @class HTSLiveScreenChatMessage; @class AWETabBarPlusButton; @class TTAdSplashDeviceHelper; @class HTSLiveChatMessage; @class HTSLiveFreeCellGiftMessage; @class AWEFamiliarAlertPopupView; @class AWELanguageSelectionPopupManager; @class HTSLiveGiftMessage; @class AWEFeedContainerViewController; @class AWECommentListViewController; @class AWEProfileHeaderExtraViewController; @class HTSLiveDiggMessage; @class BDLogOpenUDID; @class AWEGrowingTextView; @class AWEAccountPrivacyAndUserItemAlertView; @class HTSLiveLiveEcomMessage; @class AWEShareTokenNoteCardView; 
static void (*_logos_orig$_ungrouped$AppDelegate$applicationDidBecomeActive$)(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static void _logos_method$_ungrouped$AppDelegate$applicationDidBecomeActive$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIApplication *); static BOOL _logos_method$_ungrouped$AppDelegate$getUserLogined(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$AppDelegate$compareCurrentVc$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST, SEL, UIViewController *); static void (*_logos_orig$_ungrouped$AWEFeedTableViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL AWEFeedTableViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFeedTableViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWEFeedTableViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWECommentListViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL AWECommentListViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWECommentListViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWECommentListViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$)(_LOGOS_SELF_TYPE_NORMAL NHAccountManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id, id, id); static void _logos_method$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$(_LOGOS_SELF_TYPE_NORMAL NHAccountManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id, id, id); static AWETabBarPlusButton* (*_logos_orig$_ungrouped$AWETabBarPlusButton$initWithFrame$)(_LOGOS_SELF_TYPE_INIT AWETabBarPlusButton*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static AWETabBarPlusButton* _logos_method$_ungrouped$AWETabBarPlusButton$initWithFrame$(_LOGOS_SELF_TYPE_INIT AWETabBarPlusButton*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$AWEFeedContainerViewController$didFinishLogin)(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFeedContainerViewController$didFinishLogin(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWEFeedContainerViewController$setSegmentControl$)(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEFeedContainerViewController$setSegmentControl$(_LOGOS_SELF_TYPE_NORMAL AWEFeedContainerViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$DYAddressBookViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL DYAddressBookViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYAddressBookViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DYAddressBookViewController* _LOGOS_SELF_CONST, SEL); static AWEAwemePlayInteractionPresenter* (*_logos_orig$_ungrouped$AWEAwemePlayInteractionPresenter$init)(_LOGOS_SELF_TYPE_INIT AWEAwemePlayInteractionPresenter*, SEL) _LOGOS_RETURN_RETAINED; static AWEAwemePlayInteractionPresenter* _logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$init(_LOGOS_SELF_TYPE_INIT AWEAwemePlayInteractionPresenter*, SEL) _LOGOS_RETURN_RETAINED; static void _logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$notificationDidReciveForDY$(_LOGOS_SELF_TYPE_NORMAL AWEAwemePlayInteractionPresenter* _LOGOS_SELF_CONST, SEL, NSNotification *); static void (*_logos_orig$_ungrouped$AWEGrowingTextView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEGrowingTextView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEGrowingTextView$textViewbecomeFirstRespond$(_LOGOS_SELF_TYPE_NORMAL AWEGrowingTextView* _LOGOS_SELF_CONST, SEL, NSNotification *); static AWEShareTokenNoteCardView* (*_logos_orig$_ungrouped$AWEShareTokenNoteCardView$init)(_LOGOS_SELF_TYPE_INIT AWEShareTokenNoteCardView*, SEL) _LOGOS_RETURN_RETAINED; static AWEShareTokenNoteCardView* _logos_method$_ungrouped$AWEShareTokenNoteCardView$init(_LOGOS_SELF_TYPE_INIT AWEShareTokenNoteCardView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$AWEShareTokenNoteCardView$setupUI)(_LOGOS_SELF_TYPE_NORMAL AWEShareTokenNoteCardView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEShareTokenNoteCardView$setupUI(_LOGOS_SELF_TYPE_NORMAL AWEShareTokenNoteCardView* _LOGOS_SELF_CONST, SEL); static AWESearchBar* (*_logos_orig$_ungrouped$AWESearchBar$initWithFrame$)(_LOGOS_SELF_TYPE_INIT AWESearchBar*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static AWESearchBar* _logos_method$_ungrouped$AWESearchBar$initWithFrame$(_LOGOS_SELF_TYPE_INIT AWESearchBar*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static void _logos_method$_ungrouped$AWESearchBar$textViewDidplast$(_LOGOS_SELF_TYPE_NORMAL AWESearchBar* _LOGOS_SELF_CONST, SEL, NSNotification *); static void (*_logos_orig$_ungrouped$AWEFamiliarAlertPopupView$setupUI)(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFamiliarAlertPopupView$setupUI(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEFamiliarAlertPopupView$popViewShouldDissMiss(_LOGOS_SELF_TYPE_NORMAL AWEFamiliarAlertPopupView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible)(_LOGOS_SELF_TYPE_NORMAL AWEAlertWindowManager* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible(_LOGOS_SELF_TYPE_NORMAL AWEAlertWindowManager* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$)(_LOGOS_SELF_TYPE_NORMAL BDTuringVerifyView* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$(_LOGOS_SELF_TYPE_NORMAL BDTuringVerifyView* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$)(_LOGOS_SELF_TYPE_NORMAL AWEProfileHeaderExtraViewController* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$(_LOGOS_SELF_TYPE_NORMAL AWEProfileHeaderExtraViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit)(_LOGOS_SELF_TYPE_NORMAL AWEAccountPrivacyAndUserItemAlertView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit(_LOGOS_SELF_TYPE_NORMAL AWEAccountPrivacyAndUserItemAlertView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DYPhoneNumberInputView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL DYPhoneNumberInputView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYPhoneNumberInputView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL DYPhoneNumberInputView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL DYSMSLoginV2Step1ViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL DYSMSLoginV2Step1ViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$DYUserProtocolView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL DYUserProtocolView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$DYUserProtocolView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL DYUserProtocolView* _LOGOS_SELF_CONST, SEL); static AWEUIAlertView* (*_logos_orig$_ungrouped$AWEUIAlertView$init)(_LOGOS_SELF_TYPE_INIT AWEUIAlertView*, SEL) _LOGOS_RETURN_RETAINED; static AWEUIAlertView* _logos_method$_ungrouped$AWEUIAlertView$init(_LOGOS_SELF_TYPE_INIT AWEUIAlertView*, SEL) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$AWEUploadContactAlertView$loadSubviews)(_LOGOS_SELF_TYPE_NORMAL AWEUploadContactAlertView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$AWEUploadContactAlertView$loadSubviews(_LOGOS_SELF_TYPE_NORMAL AWEUploadContactAlertView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$IESLiveMessageClient$didRecieveMessages$)(_LOGOS_SELF_TYPE_NORMAL IESLiveMessageClient* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$IESLiveMessageClient$didRecieveMessages$(_LOGOS_SELF_TYPE_NORMAL IESLiveMessageClient* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$)(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST, SEL, id, id, id, _Bool, id, Class, Class, _Bool, _Bool, _Bool, id, void(^)(id,id), id); static id _logos_method$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(_LOGOS_SELF_TYPE_NORMAL TTNetworkManagerChromium* _LOGOS_SELF_CONST, SEL, id, id, id, _Bool, id, Class, Class, _Bool, _Bool, _Bool, id, void(^)(id,id), id); static NSString* (*_logos_meta_orig$_ungrouped$WXOMTAOpenUDID$value)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* _logos_meta_method$_ungrouped$WXOMTAOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* (*_logos_meta_orig$_ungrouped$BDLogOpenUDID$value)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* _logos_meta_method$_ungrouped$BDLogOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* (*_logos_meta_orig$_ungrouped$TTInstallOpenUDID$value)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* _logos_meta_method$_ungrouped$TTInstallOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* (*_logos_meta_orig$_ungrouped$UMANOpenUDID$value)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* _logos_meta_method$_ungrouped$UMANOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* (*_logos_meta_orig$_ungrouped$UTDIDOpenUDID$value)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* _logos_meta_method$_ungrouped$UTDIDOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* (*_logos_meta_orig$_ungrouped$OpenUDID$value)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString* _logos_meta_method$_ungrouped$OpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSUUID * (*_logos_orig$_ungrouped$ASIdentifierManager$advertisingIdentifier)(_LOGOS_SELF_TYPE_NORMAL ASIdentifierManager* _LOGOS_SELF_CONST, SEL); static NSUUID * _logos_method$_ungrouped$ASIdentifierManager$advertisingIdentifier(_LOGOS_SELF_TYPE_NORMAL ASIdentifierManager* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$UIDevice$btd_idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$UIDevice$btd_idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSUUID * (*_logos_orig$_ungrouped$UIDevice$identifierForVendor)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSUUID * _logos_method$_ungrouped$UIDevice$identifierForVendor(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$UIDevice$sgm_data_acquisition_vendorid)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$UIDevice$sgm_data_acquisition_vendorid(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$UIDevice$systemVersion)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$systemVersion(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$_ungrouped$UIDevice$systemName)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$_ungrouped$UIDevice$systemName(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$TTInstallKeychain$loadValueForKey$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$TTInstallKeychain$loadValueForKey$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static NSData * (*_logos_meta_orig$_ungrouped$NSKeyedArchiver$archivedDataWithRootObject$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static NSData * _logos_meta_method$_ungrouped$NSKeyedArchiver$archivedDataWithRootObject$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id (*_logos_meta_orig$_ungrouped$TTInstallDeviceHelper$idfvString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$TTInstallDeviceHelper$idfvString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$TTInstallDeviceHelper$idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$TTInstallDeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static _Bool (*_logos_meta_orig$_ungrouped$TTInstallDeviceHelper$isJailBroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static _Bool _logos_meta_method$_ungrouped$TTInstallDeviceHelper$isJailBroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$BDADeviceHelper$idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$BDADeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$BDLogDeviceHelper$idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$BDLogDeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$IESLiveDeviceInfo$idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$IESLiveDeviceInfo$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$TTAdSplashDeviceHelper$idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$TTAdSplashDeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$TTExtensions$idfaString)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$TTExtensions$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$UMANUtil$idfa)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$UMANUtil$idfa(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$_ungrouped$UMANUtil$idfv)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$UMANUtil$idfv(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEAwemeDetailTableViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEAwemeDetailTableViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEFeedRootViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEFeedRootViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEUserProfileSlidingScrollView(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEUserProfileSlidingScrollView"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveRoomMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveRoomMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWEUserDetailViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWEUserDetailViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveScreenChatMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveScreenChatMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveFreeCellGiftMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveFreeCellGiftMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$NSArray(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("NSArray"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveChatMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveChatMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveGiftMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveGiftMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveMemberMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveMemberMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$AWELanguageSelectionPopupManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("AWELanguageSelectionPopupManager"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveRoomUserSeqMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveRoomUserSeqMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveDiggMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveDiggMessage"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$DYQuickLoginLoadingViewController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("DYQuickLoginLoadingViewController"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$HTSLiveLiveEcomMessage(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("HTSLiveLiveEcomMessage"); } return _klass; }
#line 21 "/Users/apple/Desktop/MYDYHelper/MYDYHelper/MYDYHelper.xm"

static void _logos_method$_ungrouped$AppDelegate$applicationDidBecomeActive$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIApplication * application) {
    [[LGWeChatParamQueue sharedQueue] task_isDoing];
    return _logos_orig$_ungrouped$AppDelegate$applicationDidBecomeActive$(self, _cmd, application);
}


static BOOL _logos_method$_ungrouped$AppDelegate$getUserLogined(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    BOOL re =[[_logos_static_class_lookup$AWELanguageSelectionPopupManager() sharedInstance] userLogined];
    return re;
}


static NSString * _logos_method$_ungrouped$AppDelegate$compareCurrentVc$(_LOGOS_SELF_TYPE_NORMAL AppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIViewController * vc){
    
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






static void _logos_method$_ungrouped$AWEFeedTableViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWEFeedTableViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    [[LGWeChatParamQueue sharedQueue] delyStartTheTask];
    

    return _logos_orig$_ungrouped$AWEFeedTableViewController$viewDidLoad(self, _cmd);
}






static void _logos_method$_ungrouped$AWECommentListViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL AWECommentListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    HBLogDebug(@"-[<AWECommentListViewController: %p> viewDidLoad]", self);
    [[LGWeChatParamQueue sharedQueue] delaybecomeFirstRespond];
    
    return  _logos_orig$_ungrouped$AWECommentListViewController$viewDidLoad(self, _cmd);
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
           [self performSelector:@selector(skipAction) withObject:nil afterDelay:3];
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
           [self performSelector:@selector(confirmButtonDidTap) withObject:nil afterDelay:3];
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
    }else{
        return _logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13);
    }

}







static NSString* _logos_meta_method$_ungrouped$WXOMTAOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"WXOMTAOpenUDID cccccopenudidi  orig = %@" ,_logos_meta_orig$_ungrouped$WXOMTAOpenUDID$value(self, _cmd));
        
        NSLog(@"WXOMTAOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        
        return [[DYDeviceManager sharedQueue] openudid];
    }else{
        NSLog(@"WXOMTAOpenUDID cccccopenudidi  orig = num" );
        
        return _logos_meta_orig$_ungrouped$WXOMTAOpenUDID$value(self, _cmd);
    }
}




static NSString* _logos_meta_method$_ungrouped$BDLogOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"BDLogOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"BDLogOpenUDID cccccopenudidi  orig = %@" ,_logos_meta_orig$_ungrouped$BDLogOpenUDID$value(self, _cmd));
        
        return [[DYDeviceManager sharedQueue] openudid];;
    }else{
        NSLog(@"BDLogOpenUDID cccccopenudidi  orig = num" );
        
        return _logos_meta_orig$_ungrouped$BDLogOpenUDID$value(self, _cmd);
    }
}




static NSString* _logos_meta_method$_ungrouped$TTInstallOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"TTInstallOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"TTInstallOpenUDID cccccopenudidi  orig = %@" ,_logos_meta_orig$_ungrouped$TTInstallOpenUDID$value(self, _cmd));
        
        return [[DYDeviceManager sharedQueue] openudid];;
    }else{
        NSLog(@"TTInstallOpenUDID cccccopenudidi  orig = num" );
        
        return _logos_meta_orig$_ungrouped$TTInstallOpenUDID$value(self, _cmd);
    }
    
}




static NSString* _logos_meta_method$_ungrouped$UMANOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"UMANOpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"UMANOpenUDID cccccopenudidi  orig = %@" ,_logos_meta_orig$_ungrouped$UMANOpenUDID$value(self, _cmd));
        
        return [[DYDeviceManager sharedQueue] openudid];;
    }else{
        NSLog(@"UMANOpenUDID cccccopenudidi  orig = num" );
        
        return _logos_meta_orig$_ungrouped$UMANOpenUDID$value(self, _cmd);
    }
}



static NSString* _logos_meta_method$_ungrouped$UTDIDOpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    NSLog(@"UTDIDOpenUDID cccccopenudidi openudid= %@" ,_logos_meta_orig$_ungrouped$UTDIDOpenUDID$value(self, _cmd));
    return _logos_meta_orig$_ungrouped$UTDIDOpenUDID$value(self, _cmd);
    
}



static NSString* _logos_meta_method$_ungrouped$OpenUDID$value(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYDeviceManager sharedQueue] openudid]){
        NSLog(@"OpenUDID cccccopenudidi = %@" ,[[DYDeviceManager sharedQueue] openudid]);
        NSLog(@"OpenUDID cccccopenudidi  orig = %@" ,_logos_meta_orig$_ungrouped$OpenUDID$value(self, _cmd));
        
        return [[DYDeviceManager sharedQueue] openudid];
    }else{
        NSLog(@"OpenUDID cccccopenudidi  orig = num" );
        
        return _logos_meta_orig$_ungrouped$OpenUDID$value(self, _cmd);
    }
    
}




static NSUUID * _logos_method$_ungrouped$ASIdentifierManager$advertisingIdentifier(_LOGOS_SELF_TYPE_NORMAL ASIdentifierManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    
    if([[DYDeviceManager sharedQueue] idfa]){
        
        return [[DYDeviceManager sharedQueue] idfa];
    }else{
        NSLog(@"ASIdentifierManager cccccopenudidi  orig = num" );
        return _logos_orig$_ungrouped$ASIdentifierManager$advertisingIdentifier(self, _cmd);
    }
}



static id _logos_meta_method$_ungrouped$UIDevice$btd_idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    
    if([[DYDeviceManager sharedQueue] idfa]){
        
        return [[DYDeviceManager sharedQueue] idfa];
    }else{
        return _logos_meta_orig$_ungrouped$UIDevice$btd_idfaString(self, _cmd);
    }
}


static NSUUID * _logos_method$_ungrouped$UIDevice$identifierForVendor(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    
    if([[DYDeviceManager sharedQueue] idfv]){
        
        return [[DYDeviceManager sharedQueue] idfv];
    }else{
        
        return _logos_orig$_ungrouped$UIDevice$identifierForVendor(self, _cmd);
    }
}

static id _logos_meta_method$_ungrouped$UIDevice$sgm_data_acquisition_vendorid(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    
    if([[DYDeviceManager sharedQueue] idfv]){
        return [[[DYDeviceManager sharedQueue] idfv] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$UIDevice$sgm_data_acquisition_vendorid(self, _cmd);
    }
}





static NSString * _logos_method$_ungrouped$UIDevice$systemVersion(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    
    if([[DYDeviceManager sharedQueue] version]){
        
        
        return [[DYDeviceManager sharedQueue] version];
    }else{
        return _logos_orig$_ungrouped$UIDevice$systemVersion(self, _cmd);
    }
    
}


static NSString * _logos_method$_ungrouped$UIDevice$systemName(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    if([[DYDeviceManager sharedQueue] user_name]){
        return [[DYDeviceManager sharedQueue] user_name];
    }else{
        return _logos_orig$_ungrouped$UIDevice$systemName(self, _cmd);
    }
    
}






static id _logos_meta_method$_ungrouped$TTInstallKeychain$loadValueForKey$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
    
    id result =  _logos_meta_orig$_ungrouped$TTInstallKeychain$loadValueForKey$(self, _cmd, arg1);
    if (result){
        
    }
    return _logos_meta_orig$_ungrouped$TTInstallKeychain$loadValueForKey$(self, _cmd, arg1);
}






static NSData * _logos_meta_method$_ungrouped$NSKeyedArchiver$archivedDataWithRootObject$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id rootObject){
    
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
    
    return _logos_meta_orig$_ungrouped$NSKeyedArchiver$archivedDataWithRootObject$(self, _cmd, rootObject);
    
}





static id _logos_meta_method$_ungrouped$TTInstallDeviceHelper$idfvString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    
    
    if([[DYDeviceManager sharedQueue] idfv]){
        return [[[DYDeviceManager sharedQueue] idfv] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$TTInstallDeviceHelper$idfvString(self, _cmd);
    }
    
}
static id _logos_meta_method$_ungrouped$TTInstallDeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$TTInstallDeviceHelper$idfaString(self, _cmd);
    }
}

static _Bool _logos_meta_method$_ungrouped$TTInstallDeviceHelper$isJailBroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    return NO;
}




static id _logos_meta_method$_ungrouped$BDADeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$BDADeviceHelper$idfaString(self, _cmd);
    }
    return  _logos_meta_orig$_ungrouped$BDADeviceHelper$idfaString(self, _cmd);
    
}



static id _logos_meta_method$_ungrouped$BDLogDeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$BDLogDeviceHelper$idfaString(self, _cmd);
    }
    return  _logos_meta_orig$_ungrouped$BDLogDeviceHelper$idfaString(self, _cmd);
    
}



static id _logos_meta_method$_ungrouped$IESLiveDeviceInfo$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$IESLiveDeviceInfo$idfaString(self, _cmd);
    }
    
    return  _logos_meta_orig$_ungrouped$IESLiveDeviceInfo$idfaString(self, _cmd);
    
}



static id _logos_meta_method$_ungrouped$TTAdSplashDeviceHelper$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$TTAdSplashDeviceHelper$idfaString(self, _cmd);
    }
    
    
    return  _logos_meta_orig$_ungrouped$TTAdSplashDeviceHelper$idfaString(self, _cmd);
}




static id _logos_meta_method$_ungrouped$TTExtensions$idfaString(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else
        
        
        return  _logos_meta_orig$_ungrouped$TTExtensions$idfaString(self, _cmd);
    
}







static id _logos_meta_method$_ungrouped$UMANUtil$idfa(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    if([[DYDeviceManager sharedQueue] idfa]){
        return [[[DYDeviceManager sharedQueue] idfa] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$UMANUtil$idfa(self, _cmd);
    }
    
    
}
static id _logos_meta_method$_ungrouped$UMANUtil$idfv(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    
    
    if([[DYDeviceManager sharedQueue] idfv]){
        return [[[DYDeviceManager sharedQueue] idfv] UUIDString];
    }else{
        return _logos_meta_orig$_ungrouped$UMANUtil$idfv(self, _cmd);
    }
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

static __attribute__((constructor)) void _logosLocalCtor_3dab13e8(int __unused argc, char __unused **argv, char __unused **envp){
    
    [[LGWeChatParamQueue sharedQueue] clearCookies];
    
    [[LGWeChatParamQueue sharedQueue] clearKeyChain];
    
    [[LGWeChatParamQueue sharedQueue] resetDoyinDevice];
    
    [[LGWeChatParamQueue sharedQueue] resetDouyinTask];
    [[LGWeChatParamQueue sharedQueue] task_isDoing];
    
    

    
    hookMGCopyAnswer();
    hook_uname();
    hookLocations();
    
    
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AppDelegate = objc_getClass("AppDelegate"); MSHookMessageEx(_logos_class$_ungrouped$AppDelegate, @selector(applicationDidBecomeActive:), (IMP)&_logos_method$_ungrouped$AppDelegate$applicationDidBecomeActive$, (IMP*)&_logos_orig$_ungrouped$AppDelegate$applicationDidBecomeActive$);{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AppDelegate, @selector(getUserLogined), (IMP)&_logos_method$_ungrouped$AppDelegate$getUserLogined, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIViewController *), strlen(@encode(UIViewController *))); i += strlen(@encode(UIViewController *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AppDelegate, @selector(compareCurrentVc:), (IMP)&_logos_method$_ungrouped$AppDelegate$compareCurrentVc$, _typeEncoding); }Class _logos_class$_ungrouped$AWEFeedTableViewController = objc_getClass("AWEFeedTableViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEFeedTableViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$AWEFeedTableViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$AWEFeedTableViewController$viewDidLoad);Class _logos_class$_ungrouped$AWECommentListViewController = objc_getClass("AWECommentListViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWECommentListViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$AWECommentListViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$AWECommentListViewController$viewDidLoad);Class _logos_class$_ungrouped$NHAccountManager = objc_getClass("NHAccountManager"); MSHookMessageEx(_logos_class$_ungrouped$NHAccountManager, @selector(handleLoginSuccess:verificationInfo:params:completion:), (IMP)&_logos_method$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$, (IMP*)&_logos_orig$_ungrouped$NHAccountManager$handleLoginSuccess$verificationInfo$params$completion$);Class _logos_class$_ungrouped$AWETabBarPlusButton = objc_getClass("AWETabBarPlusButton"); MSHookMessageEx(_logos_class$_ungrouped$AWETabBarPlusButton, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$AWETabBarPlusButton$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$AWETabBarPlusButton$initWithFrame$);Class _logos_class$_ungrouped$AWEFeedContainerViewController = objc_getClass("AWEFeedContainerViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEFeedContainerViewController, @selector(didFinishLogin), (IMP)&_logos_method$_ungrouped$AWEFeedContainerViewController$didFinishLogin, (IMP*)&_logos_orig$_ungrouped$AWEFeedContainerViewController$didFinishLogin);MSHookMessageEx(_logos_class$_ungrouped$AWEFeedContainerViewController, @selector(setSegmentControl:), (IMP)&_logos_method$_ungrouped$AWEFeedContainerViewController$setSegmentControl$, (IMP*)&_logos_orig$_ungrouped$AWEFeedContainerViewController$setSegmentControl$);Class _logos_class$_ungrouped$DYAddressBookViewController = objc_getClass("DYAddressBookViewController"); MSHookMessageEx(_logos_class$_ungrouped$DYAddressBookViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$DYAddressBookViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$DYAddressBookViewController$viewDidLoad);Class _logos_class$_ungrouped$AWEAwemePlayInteractionPresenter = objc_getClass("AWEAwemePlayInteractionPresenter"); MSHookMessageEx(_logos_class$_ungrouped$AWEAwemePlayInteractionPresenter, @selector(init), (IMP)&_logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$init, (IMP*)&_logos_orig$_ungrouped$AWEAwemePlayInteractionPresenter$init);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEAwemePlayInteractionPresenter, @selector(notificationDidReciveForDY:), (IMP)&_logos_method$_ungrouped$AWEAwemePlayInteractionPresenter$notificationDidReciveForDY$, _typeEncoding); }Class _logos_class$_ungrouped$AWEGrowingTextView = objc_getClass("AWEGrowingTextView"); MSHookMessageEx(_logos_class$_ungrouped$AWEGrowingTextView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$AWEGrowingTextView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$AWEGrowingTextView$setBackgroundColor$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEGrowingTextView, @selector(textViewbecomeFirstRespond:), (IMP)&_logos_method$_ungrouped$AWEGrowingTextView$textViewbecomeFirstRespond$, _typeEncoding); }Class _logos_class$_ungrouped$AWEShareTokenNoteCardView = objc_getClass("AWEShareTokenNoteCardView"); MSHookMessageEx(_logos_class$_ungrouped$AWEShareTokenNoteCardView, @selector(init), (IMP)&_logos_method$_ungrouped$AWEShareTokenNoteCardView$init, (IMP*)&_logos_orig$_ungrouped$AWEShareTokenNoteCardView$init);MSHookMessageEx(_logos_class$_ungrouped$AWEShareTokenNoteCardView, @selector(setupUI), (IMP)&_logos_method$_ungrouped$AWEShareTokenNoteCardView$setupUI, (IMP*)&_logos_orig$_ungrouped$AWEShareTokenNoteCardView$setupUI);Class _logos_class$_ungrouped$AWESearchBar = objc_getClass("AWESearchBar"); MSHookMessageEx(_logos_class$_ungrouped$AWESearchBar, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$AWESearchBar$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$AWESearchBar$initWithFrame$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSNotification *), strlen(@encode(NSNotification *))); i += strlen(@encode(NSNotification *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWESearchBar, @selector(textViewDidplast:), (IMP)&_logos_method$_ungrouped$AWESearchBar$textViewDidplast$, _typeEncoding); }Class _logos_class$_ungrouped$AWEFamiliarAlertPopupView = objc_getClass("AWEFamiliarAlertPopupView"); MSHookMessageEx(_logos_class$_ungrouped$AWEFamiliarAlertPopupView, @selector(setupUI), (IMP)&_logos_method$_ungrouped$AWEFamiliarAlertPopupView$setupUI, (IMP*)&_logos_orig$_ungrouped$AWEFamiliarAlertPopupView$setupUI);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$AWEFamiliarAlertPopupView, @selector(popViewShouldDissMiss), (IMP)&_logos_method$_ungrouped$AWEFamiliarAlertPopupView$popViewShouldDissMiss, _typeEncoding); }Class _logos_class$_ungrouped$AWEAlertWindowManager = objc_getClass("AWEAlertWindowManager"); MSHookMessageEx(_logos_class$_ungrouped$AWEAlertWindowManager, @selector(makeKeyAndVisible), (IMP)&_logos_method$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible, (IMP*)&_logos_orig$_ungrouped$AWEAlertWindowManager$makeKeyAndVisible);Class _logos_class$_ungrouped$BDTuringVerifyView = objc_getClass("BDTuringVerifyView"); MSHookMessageEx(_logos_class$_ungrouped$BDTuringVerifyView, @selector(webView:didFinishNavigation:), (IMP)&_logos_method$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$, (IMP*)&_logos_orig$_ungrouped$BDTuringVerifyView$webView$didFinishNavigation$);Class _logos_class$_ungrouped$AWEProfileHeaderExtraViewController = objc_getClass("AWEProfileHeaderExtraViewController"); MSHookMessageEx(_logos_class$_ungrouped$AWEProfileHeaderExtraViewController, @selector(relationBtnClicked:), (IMP)&_logos_method$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$, (IMP*)&_logos_orig$_ungrouped$AWEProfileHeaderExtraViewController$relationBtnClicked$);Class _logos_class$_ungrouped$AWEAccountPrivacyAndUserItemAlertView = objc_getClass("AWEAccountPrivacyAndUserItemAlertView"); MSHookMessageEx(_logos_class$_ungrouped$AWEAccountPrivacyAndUserItemAlertView, @selector(_commonInit), (IMP)&_logos_method$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit, (IMP*)&_logos_orig$_ungrouped$AWEAccountPrivacyAndUserItemAlertView$_commonInit);Class _logos_class$_ungrouped$DYPhoneNumberInputView = objc_getClass("DYPhoneNumberInputView"); MSHookMessageEx(_logos_class$_ungrouped$DYPhoneNumberInputView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$DYPhoneNumberInputView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$DYPhoneNumberInputView$layoutSubviews);Class _logos_class$_ungrouped$DYSMSLoginV2Step1ViewController = objc_getClass("DYSMSLoginV2Step1ViewController"); MSHookMessageEx(_logos_class$_ungrouped$DYSMSLoginV2Step1ViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$DYSMSLoginV2Step1ViewController$viewDidLoad);Class _logos_class$_ungrouped$DYUserProtocolView = objc_getClass("DYUserProtocolView"); MSHookMessageEx(_logos_class$_ungrouped$DYUserProtocolView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$DYUserProtocolView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$DYUserProtocolView$layoutSubviews);Class _logos_class$_ungrouped$AWEUIAlertView = objc_getClass("AWEUIAlertView"); MSHookMessageEx(_logos_class$_ungrouped$AWEUIAlertView, @selector(init), (IMP)&_logos_method$_ungrouped$AWEUIAlertView$init, (IMP*)&_logos_orig$_ungrouped$AWEUIAlertView$init);Class _logos_class$_ungrouped$AWEUploadContactAlertView = objc_getClass("AWEUploadContactAlertView"); MSHookMessageEx(_logos_class$_ungrouped$AWEUploadContactAlertView, @selector(loadSubviews), (IMP)&_logos_method$_ungrouped$AWEUploadContactAlertView$loadSubviews, (IMP*)&_logos_orig$_ungrouped$AWEUploadContactAlertView$loadSubviews);Class _logos_class$_ungrouped$IESLiveMessageClient = objc_getClass("IESLiveMessageClient"); MSHookMessageEx(_logos_class$_ungrouped$IESLiveMessageClient, @selector(didRecieveMessages:), (IMP)&_logos_method$_ungrouped$IESLiveMessageClient$didRecieveMessages$, (IMP*)&_logos_orig$_ungrouped$IESLiveMessageClient$didRecieveMessages$);Class _logos_class$_ungrouped$TTNetworkManagerChromium = objc_getClass("TTNetworkManagerChromium"); MSHookMessageEx(_logos_class$_ungrouped$TTNetworkManagerChromium, @selector(requestForJSONWithURL_:params:method:needCommonParams:headerField:requestSerializer:responseSerializer:autoResume:verifyRequest:isCustomizedCookie:callback:callbackWithResponse:dispatch_queue:), (IMP)&_logos_method$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$, (IMP*)&_logos_orig$_ungrouped$TTNetworkManagerChromium$requestForJSONWithURL_$params$method$needCommonParams$headerField$requestSerializer$responseSerializer$autoResume$verifyRequest$isCustomizedCookie$callback$callbackWithResponse$dispatch_queue$);Class _logos_class$_ungrouped$WXOMTAOpenUDID = objc_getClass("WXOMTAOpenUDID"); Class _logos_metaclass$_ungrouped$WXOMTAOpenUDID = object_getClass(_logos_class$_ungrouped$WXOMTAOpenUDID); MSHookMessageEx(_logos_metaclass$_ungrouped$WXOMTAOpenUDID, @selector(value), (IMP)&_logos_meta_method$_ungrouped$WXOMTAOpenUDID$value, (IMP*)&_logos_meta_orig$_ungrouped$WXOMTAOpenUDID$value);Class _logos_class$_ungrouped$BDLogOpenUDID = objc_getClass("BDLogOpenUDID"); Class _logos_metaclass$_ungrouped$BDLogOpenUDID = object_getClass(_logos_class$_ungrouped$BDLogOpenUDID); MSHookMessageEx(_logos_metaclass$_ungrouped$BDLogOpenUDID, @selector(value), (IMP)&_logos_meta_method$_ungrouped$BDLogOpenUDID$value, (IMP*)&_logos_meta_orig$_ungrouped$BDLogOpenUDID$value);Class _logos_class$_ungrouped$TTInstallOpenUDID = objc_getClass("TTInstallOpenUDID"); Class _logos_metaclass$_ungrouped$TTInstallOpenUDID = object_getClass(_logos_class$_ungrouped$TTInstallOpenUDID); MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallOpenUDID, @selector(value), (IMP)&_logos_meta_method$_ungrouped$TTInstallOpenUDID$value, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallOpenUDID$value);Class _logos_class$_ungrouped$UMANOpenUDID = objc_getClass("UMANOpenUDID"); Class _logos_metaclass$_ungrouped$UMANOpenUDID = object_getClass(_logos_class$_ungrouped$UMANOpenUDID); MSHookMessageEx(_logos_metaclass$_ungrouped$UMANOpenUDID, @selector(value), (IMP)&_logos_meta_method$_ungrouped$UMANOpenUDID$value, (IMP*)&_logos_meta_orig$_ungrouped$UMANOpenUDID$value);Class _logos_class$_ungrouped$UTDIDOpenUDID = objc_getClass("UTDIDOpenUDID"); Class _logos_metaclass$_ungrouped$UTDIDOpenUDID = object_getClass(_logos_class$_ungrouped$UTDIDOpenUDID); MSHookMessageEx(_logos_metaclass$_ungrouped$UTDIDOpenUDID, @selector(value), (IMP)&_logos_meta_method$_ungrouped$UTDIDOpenUDID$value, (IMP*)&_logos_meta_orig$_ungrouped$UTDIDOpenUDID$value);Class _logos_class$_ungrouped$OpenUDID = objc_getClass("OpenUDID"); Class _logos_metaclass$_ungrouped$OpenUDID = object_getClass(_logos_class$_ungrouped$OpenUDID); MSHookMessageEx(_logos_metaclass$_ungrouped$OpenUDID, @selector(value), (IMP)&_logos_meta_method$_ungrouped$OpenUDID$value, (IMP*)&_logos_meta_orig$_ungrouped$OpenUDID$value);Class _logos_class$_ungrouped$ASIdentifierManager = objc_getClass("ASIdentifierManager"); MSHookMessageEx(_logos_class$_ungrouped$ASIdentifierManager, @selector(advertisingIdentifier), (IMP)&_logos_method$_ungrouped$ASIdentifierManager$advertisingIdentifier, (IMP*)&_logos_orig$_ungrouped$ASIdentifierManager$advertisingIdentifier);Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); Class _logos_metaclass$_ungrouped$UIDevice = object_getClass(_logos_class$_ungrouped$UIDevice); MSHookMessageEx(_logos_metaclass$_ungrouped$UIDevice, @selector(btd_idfaString), (IMP)&_logos_meta_method$_ungrouped$UIDevice$btd_idfaString, (IMP*)&_logos_meta_orig$_ungrouped$UIDevice$btd_idfaString);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(identifierForVendor), (IMP)&_logos_method$_ungrouped$UIDevice$identifierForVendor, (IMP*)&_logos_orig$_ungrouped$UIDevice$identifierForVendor);MSHookMessageEx(_logos_metaclass$_ungrouped$UIDevice, @selector(sgm_data_acquisition_vendorid), (IMP)&_logos_meta_method$_ungrouped$UIDevice$sgm_data_acquisition_vendorid, (IMP*)&_logos_meta_orig$_ungrouped$UIDevice$sgm_data_acquisition_vendorid);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(systemVersion), (IMP)&_logos_method$_ungrouped$UIDevice$systemVersion, (IMP*)&_logos_orig$_ungrouped$UIDevice$systemVersion);MSHookMessageEx(_logos_class$_ungrouped$UIDevice, @selector(systemName), (IMP)&_logos_method$_ungrouped$UIDevice$systemName, (IMP*)&_logos_orig$_ungrouped$UIDevice$systemName);Class _logos_class$_ungrouped$TTInstallKeychain = objc_getClass("TTInstallKeychain"); Class _logos_metaclass$_ungrouped$TTInstallKeychain = object_getClass(_logos_class$_ungrouped$TTInstallKeychain); MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallKeychain, @selector(loadValueForKey:), (IMP)&_logos_meta_method$_ungrouped$TTInstallKeychain$loadValueForKey$, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallKeychain$loadValueForKey$);Class _logos_class$_ungrouped$NSKeyedArchiver = objc_getClass("NSKeyedArchiver"); Class _logos_metaclass$_ungrouped$NSKeyedArchiver = object_getClass(_logos_class$_ungrouped$NSKeyedArchiver); MSHookMessageEx(_logos_metaclass$_ungrouped$NSKeyedArchiver, @selector(archivedDataWithRootObject:), (IMP)&_logos_meta_method$_ungrouped$NSKeyedArchiver$archivedDataWithRootObject$, (IMP*)&_logos_meta_orig$_ungrouped$NSKeyedArchiver$archivedDataWithRootObject$);Class _logos_class$_ungrouped$TTInstallDeviceHelper = objc_getClass("TTInstallDeviceHelper"); Class _logos_metaclass$_ungrouped$TTInstallDeviceHelper = object_getClass(_logos_class$_ungrouped$TTInstallDeviceHelper); MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallDeviceHelper, @selector(idfvString), (IMP)&_logos_meta_method$_ungrouped$TTInstallDeviceHelper$idfvString, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallDeviceHelper$idfvString);MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallDeviceHelper, @selector(idfaString), (IMP)&_logos_meta_method$_ungrouped$TTInstallDeviceHelper$idfaString, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallDeviceHelper$idfaString);MSHookMessageEx(_logos_metaclass$_ungrouped$TTInstallDeviceHelper, @selector(isJailBroken), (IMP)&_logos_meta_method$_ungrouped$TTInstallDeviceHelper$isJailBroken, (IMP*)&_logos_meta_orig$_ungrouped$TTInstallDeviceHelper$isJailBroken);Class _logos_class$_ungrouped$BDADeviceHelper = objc_getClass("BDADeviceHelper"); Class _logos_metaclass$_ungrouped$BDADeviceHelper = object_getClass(_logos_class$_ungrouped$BDADeviceHelper); MSHookMessageEx(_logos_metaclass$_ungrouped$BDADeviceHelper, @selector(idfaString), (IMP)&_logos_meta_method$_ungrouped$BDADeviceHelper$idfaString, (IMP*)&_logos_meta_orig$_ungrouped$BDADeviceHelper$idfaString);Class _logos_class$_ungrouped$BDLogDeviceHelper = objc_getClass("BDLogDeviceHelper"); Class _logos_metaclass$_ungrouped$BDLogDeviceHelper = object_getClass(_logos_class$_ungrouped$BDLogDeviceHelper); MSHookMessageEx(_logos_metaclass$_ungrouped$BDLogDeviceHelper, @selector(idfaString), (IMP)&_logos_meta_method$_ungrouped$BDLogDeviceHelper$idfaString, (IMP*)&_logos_meta_orig$_ungrouped$BDLogDeviceHelper$idfaString);Class _logos_class$_ungrouped$IESLiveDeviceInfo = objc_getClass("IESLiveDeviceInfo"); Class _logos_metaclass$_ungrouped$IESLiveDeviceInfo = object_getClass(_logos_class$_ungrouped$IESLiveDeviceInfo); MSHookMessageEx(_logos_metaclass$_ungrouped$IESLiveDeviceInfo, @selector(idfaString), (IMP)&_logos_meta_method$_ungrouped$IESLiveDeviceInfo$idfaString, (IMP*)&_logos_meta_orig$_ungrouped$IESLiveDeviceInfo$idfaString);Class _logos_class$_ungrouped$TTAdSplashDeviceHelper = objc_getClass("TTAdSplashDeviceHelper"); Class _logos_metaclass$_ungrouped$TTAdSplashDeviceHelper = object_getClass(_logos_class$_ungrouped$TTAdSplashDeviceHelper); MSHookMessageEx(_logos_metaclass$_ungrouped$TTAdSplashDeviceHelper, @selector(idfaString), (IMP)&_logos_meta_method$_ungrouped$TTAdSplashDeviceHelper$idfaString, (IMP*)&_logos_meta_orig$_ungrouped$TTAdSplashDeviceHelper$idfaString);Class _logos_class$_ungrouped$TTExtensions = objc_getClass("TTExtensions"); Class _logos_metaclass$_ungrouped$TTExtensions = object_getClass(_logos_class$_ungrouped$TTExtensions); MSHookMessageEx(_logos_metaclass$_ungrouped$TTExtensions, @selector(idfaString), (IMP)&_logos_meta_method$_ungrouped$TTExtensions$idfaString, (IMP*)&_logos_meta_orig$_ungrouped$TTExtensions$idfaString);Class _logos_class$_ungrouped$UMANUtil = objc_getClass("UMANUtil"); Class _logos_metaclass$_ungrouped$UMANUtil = object_getClass(_logos_class$_ungrouped$UMANUtil); MSHookMessageEx(_logos_metaclass$_ungrouped$UMANUtil, @selector(idfa), (IMP)&_logos_meta_method$_ungrouped$UMANUtil$idfa, (IMP*)&_logos_meta_orig$_ungrouped$UMANUtil$idfa);MSHookMessageEx(_logos_metaclass$_ungrouped$UMANUtil, @selector(idfv), (IMP)&_logos_meta_method$_ungrouped$UMANUtil$idfv, (IMP*)&_logos_meta_orig$_ungrouped$UMANUtil$idfv);} }
#line 1091 "/Users/apple/Desktop/MYDYHelper/MYDYHelper/MYDYHelper.xm"
