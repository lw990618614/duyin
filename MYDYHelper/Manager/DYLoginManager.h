//
//  DYLoginManager.h
//  MYDYHelper
//
//  Created by apple on 2020/6/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYLoginManager : NSObject
@property (nonatomic, assign) NSInteger  times;

@property (nonatomic, assign) CGRect  imageFrame;
@property (nonatomic, assign) UIView *  screenWebView;
@property (nonatomic, assign) BOOL  waitingCodeRespond;
@property (nonatomic, strong) NSArray  *recongtiionArray;


+(instancetype)sharedQueue;

- (void)feedTaskDidFinsh;
- (void)starToShartScreen;

- (void)p_timerAction ;

- (void)loginSuccess;

- (void)loginStepTwo;

- (void)loginStepThree;


@end

NS_ASSUME_NONNULL_END
