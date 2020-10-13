//
//  DYVcManager.h
//  MYDYHelper
//
//  Created by apple on 2020/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYVcManager : NSObject
@property (nonatomic, strong) AWEFeedSegmentedControl *selectVc;
@property (nonatomic, strong) AWEIMLoginManager *imloginManager;

+(instancetype)sharedQueue;

@end

NS_ASSUME_NONNULL_END
