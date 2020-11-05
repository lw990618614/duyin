
#import <UIKit/UIKit.h>
typedef void(^Block)();

@interface AWEUserDetailViewController  :UIViewController
@property(copy, nonatomic) NSString *userID; // @synthesize userID=_userID;有值

@end
@interface AWEAwemePlayInteractionViewController : UIViewController
@end

@interface AWEAwemePlayInteractionPresenter@property(copy, nonatomic) NSString *userID; // @synthesize userID=_userID;有值
@property(retain, nonatomic) id  model;
@property(nonatomic) __weak AWEAwemePlayInteractionViewController *viewController;
@end

@interface AWEGrowingTextView
@property(retain, nonatomic) UITextView *internalTextView; // @synthesize internalTextView;
@end

@interface AWECommentListInputView
@property(retain, nonatomic) AWEGrowingTextView *textView; // @synthesize internalTextView;
@end



@interface AWECommentListViewController
@property(retain, nonatomic) AWEGrowingTextView *textView;
@end


@interface SHSPhoneTextField : UITextField
@end

@interface DYPhoneNumberInputView
@property(retain, nonatomic) SHSPhoneTextField *textField; // @synthesize textField=_textField;
- (void)didChangeValue;

@end


@interface DYSMSLoginV2Step1ViewController
- (void)viewDidLoad;

- (void)loginAction:(id)arg1;
@property(retain, nonatomic)  id loginButton; // @synthesize loginButton=_loginButton;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end

@interface DYUserProtocolView
@property(retain, nonatomic) UIButton *selectButton; // @synthesize selectButton=_selectButton;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end

@interface VPNConnectionStore

+ (id)sharedInstance;

- (id)configurations;

@end

@interface VPNSetupListController

@end


@interface NEConfiguration

@end


@interface AWETabBarPlusButton
- (void)buttonClicked;
@end

@interface BDTuringVerifyView
@property(retain, nonatomic) UIView * webView; // @synthesize webView=_webView;
@end

@interface AWESearchBar
@property(nonatomic) __weak UITextField *ownSearchField; // @synthesize ownSearchField=_ownSearchField;
@end

@interface AWEProfileHeaderExtraViewController

@end

@interface AWEShareTokenNoteCardView
- (void)gotoVideo;

@end

@interface AWEAccountPrivacyAndUserItemAlertView

- (void)confirmButtonDidTap;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end



@interface DYAddressBookViewController
- (void)skipAction;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end



@interface AWEUIAlertView
- (void)dismissSelfDefineAlert;
- (void)dismiss:(_Bool)arg1;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end

@interface AWEUploadContactAlertView
- (void)dismissAlertView;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end


@interface HTSLiveTextFormat
// Remaining properties
@property(nonatomic) _Bool bold; // @dynamic bold;
@property(copy, nonatomic) NSString *color; // @dynamic color;
@property(nonatomic) int fontSize; // @dynamic fontSize;
@property(nonatomic) _Bool italic; // @dynamic italic;
@property(nonatomic) int italicAngle; // @dynamic italicAngle;
@property(nonatomic) int weight; // @dynamic weight;

@end
@interface HTSLiveText
@property(retain, nonatomic) HTSLiveTextFormat *defaultFormat; // @dynamic defaultFormat;
@property(copy, nonatomic) NSString *defaultPattern; // @dynamic defaultPattern;
@property(nonatomic) _Bool hasDefaultFormat; // @dynamic hasDefaultFormat;
@property(copy, nonatomic) NSString *key; // @dynamic key;
@property(retain, nonatomic) NSMutableArray *piecesArray; // @dynamic piecesArray;
@property(readonly, nonatomic) unsigned long long piecesArray_Count; // @dynamic piecesArray_Count;

@end

@interface HTSLiveCommon

@property(nonatomic) long long anchorFoldType; // @dynamic anchorFoldType;
@property(nonatomic) long long createTime; // @dynamic createTime;
@property(copy, nonatomic) NSString *describe; // @dynamic describe;
@property(nonatomic) long long foldType; // @dynamic foldType;
@property(nonatomic) _Bool hasDisplayText; // @dynamic hasDisplayText;
@property(nonatomic) _Bool isShowMsg; // @dynamic isShowMsg;
@property(copy, nonatomic) NSString *method; // @dynamic method;
@property(nonatomic) int monitor; // @dynamic monitor;
@property(nonatomic) long long msgId; // @dynamic msgId;
@property(nonatomic) long long roomId; // @dynamic roomId;
@property(retain, nonatomic) HTSLiveText *displayText; // @dynamic displayText;
@end

@interface HTSLiveChatMessage
@property(copy, nonatomic) NSString *content; // @dynamic content;

+ (Class)class;

@end

@interface HTSLiveRoomMessage
@property(copy, nonatomic) NSString *content; // @dynamic content;


@end

@interface HTSLiveGiftMessage
@property(nonatomic) _Bool special; // @synthesize special=_special;
@property(nonatomic) _Bool isFakedNormalGift; // @synthesize isFakedNormalGift=_isFakedNormalGift;
@property(nonatomic) _Bool isFakedBigGift; // @synthesize isFakedBigGift=_isFakedBigGift;
- (long long)compareTo:(id)arg1;

// Remaining properties
@property(nonatomic) long long comboCount; // @dynamic comboCount;
@property(retain, nonatomic) HTSLiveCommon *common; // @dynamic common;
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(nonatomic) long long fanTicketCount; // @dynamic fanTicketCount;
@property(nonatomic) long long giftId; // @dynamic giftId;
@property(nonatomic) long long groupCount; // @dynamic groupCount;
@property(nonatomic) long long groupId; // @dynamic groupId;
@property(nonatomic) _Bool hasCommon; // @dynamic hasCommon;
@property(nonatomic) _Bool hasGift; // @dynamic hasGift;
@property(nonatomic) _Bool hasPriority; // @dynamic hasPriority;
@property(nonatomic) _Bool hasTextEffect; // @dynamic hasTextEffect;
@property(nonatomic) _Bool hasToUser; // @dynamic hasToUser;
@property(nonatomic) _Bool hasUser; // @dynamic hasUser;
@property(readonly) unsigned long long hash;
@property(nonatomic) long long incomeTaskgifts; // @dynamic incomeTaskgifts;
@property(nonatomic) long long repeatCount; // @dynamic repeatCount;
@property(nonatomic) int repeatEnd; // @dynamic repeatEnd;
@property(nonatomic) long long roomFanTicketCount; // @dynamic roomFanTicketCount;
@property(readonly) Class superclass;


@end



@interface HTSLiveRoomUserSeqMessage
+ (id)descriptor;

@property(retain, nonatomic) HTSLiveCommon *common; // @dynamic common;
@property(nonatomic) _Bool hasCommon; // @dynamic hasCommon;
@property(copy, nonatomic) NSString *popStr; // @dynamic popStr;
@property(nonatomic) long long popularity; // @dynamic popularity;
@property(retain, nonatomic) NSMutableArray *ranksArray; // @dynamic ranksArray;
@property(readonly, nonatomic) unsigned long long ranksArray_Count; // @dynamic ranksArray_Count;
@property(retain, nonatomic) NSMutableArray *seatsArray; // @dynamic seatsArray;
@property(readonly, nonatomic) unsigned long long seatsArray_Count; // @dynamic seatsArray_Count;
@property(nonatomic) long long total; // @dynamic total;
@property(nonatomic) long long totalUser; // @dynamic totalUser;


@end



@interface HTSLiveMemberMessage
// Remaining properties
@property(nonatomic) long long action; // @dynamic action;
@property(copy, nonatomic) NSString *actionDescription; // @dynamic actionDescription;
@property(retain, nonatomic) HTSLiveText *anchorDisplayText; // @dynamic anchorDisplayText;
@property(nonatomic) long long enterType; // @dynamic enterType;
@property(nonatomic) _Bool hasAnchorDisplayText; // @dynamic hasAnchorDisplayText;
@property(nonatomic) _Bool hasBackgroundImage; // @dynamic hasBackgroundImage;
@property(nonatomic) _Bool hasBackgroundImageV2; // @dynamic hasBackgroundImageV2;
@property(nonatomic) _Bool hasCommon; // @dynamic hasCommon;
@property(nonatomic) _Bool hasEffectConfig; // @dynamic hasEffectConfig;
@property(nonatomic) _Bool hasEnterEffectConfig; // @dynamic hasEnterEffectConfig;
@property(nonatomic) _Bool hasOperator_p; // @dynamic hasOperator_p;
@property(nonatomic) _Bool hasUser; // @dynamic hasUser;
@property(nonatomic) _Bool isSetToAdmin; // @dynamic isSetToAdmin;
@property(nonatomic) _Bool isTopUser; // @dynamic isTopUser;
@property(nonatomic) long long memberCount; // @dynamic memberCount;
@property(copy, nonatomic) NSString *popStr; // @dynamic popStr;
@property(nonatomic) long long rankScore; // @dynamic rankScore;
@property(nonatomic) long long topUserNo; // @dynamic topUserNo;
@property(nonatomic) long long userId; // @dynamic userId;


@end


@interface HTSLiveDiggMessage
@property(nonatomic) long long color; // @dynamic color;
@property(retain, nonatomic) HTSLiveCommon *common; // @dynamic common;
@property(nonatomic) long long diggCount; // @dynamic diggCount;
@property(nonatomic) long long duration; // @dynamic duration;
@property(nonatomic) _Bool hasCommon; // @dynamic hasCommon;
@property(nonatomic) _Bool hasUser; // @dynamic hasUser;
@property(copy, nonatomic) NSString *icon; // @dynamic icon;
@end


@interface HTSLiveScreenChatMessage

@property(retain, nonatomic) HTSLiveCommon *common; // @dynamic common;
@property(copy, nonatomic) NSString *content; // @dynamic content;
@end

@interface HTSLiveFreeCellGiftMessage

@property(retain, nonatomic) HTSLiveCommon *common; // @dynamic common;
@property(copy, nonatomic) NSString *content; // @dynamic content;
@end

@interface HTSLiveLiveEcomMessage

@property(retain, nonatomic) HTSLiveCommon *common; // @dynamic common;
@property(copy, nonatomic) NSString *content; // @dynamic content;
@property(copy, nonatomic) NSString *nickName; // @dynamic nickName;
@property(copy, nonatomic) NSString *nick_name; // @dynamic nickName;

@end



@interface HTSLiveResponse // Remaining properties
@property(copy, nonatomic) NSString *cursor; // @dynamic cursor;
@property(nonatomic) long long fetchInterval; // @dynamic fetchInterval;
@property(copy, nonatomic) NSString *internalExt; // @dynamic internalExt;
@property(retain, nonatomic) NSMutableArray *messagesArray; // @dynamic messagesArray;
@property(readonly, nonatomic) unsigned long long messagesArray_Count; // @dynamic messagesArray_Count;
@property(nonatomic) long long now; // @dynamic now;
- (id)description;

@end

@interface AWEAlertWindowManager // Remaining properties
- (void)dismiss;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;

@end

@interface AWEFamiliarAlertPopupView // Remaining properties
@property(copy, nonatomic) Block tapCloseBtnBlock; // @synthesize tapCloseBtnBlock=_tapCloseBtnBlock;
- (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;
- (void)popViewShouldDissMiss;
@end



@interface DYQuickLoginLoadingViewController

@end

@interface AWEAwemeDetailTableViewController

@end

@interface AWEUserProfileSlidingScrollView

@end

@interface AWEFeedRootViewController
+ (id)class;

@end


@interface AWELanguageSelectionPopupManager
+ (id)sharedInstance;
@property(nonatomic) _Bool userLogined; // @synthesize userLogined=_userLogined;
@end

@interface AWEFeedSegmentedControl
- (void)setSelectedIndex:(long long)arg1 animated:(_Bool)arg2 tapped:(_Bool)arg3;
@property(nonatomic) long long selectedIndex; // @synthesize selectedIndex=_selectedIndex;
@property(retain, nonatomic) NSArray *titles; // @synthesize titles=_titles;
- (void)segmentedControlTapped:(long long)arg1;
- (NSString *)compareCurrentVc:(UIViewController *)vc;

@end

@interface AWEFeedContainerViewController
@property(retain, nonatomic) AWEFeedSegmentedControl *segmentControl; // @synthesize segmentControl=_segmentControl;
@end

@interface AWEIMLoginManager
- (_Bool)hasLogin;
- (id)tokenKey;
@property(copy, nonatomic) NSString *token; // @synthesize token=_token;

@end



@interface AWEAwemeModel
@property(nonatomic) _Bool isAds; // @synthesize isAds=_isAds;

@end


@interface AWEFeedTableViewController
- (NSString *)compareCurrentVc:(UIViewController *)vc;

@end











