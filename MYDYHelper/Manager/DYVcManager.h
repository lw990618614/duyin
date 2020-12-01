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

@property (nonatomic, strong) id data;
@property (nonatomic, assign) BOOL enable;



+(instancetype)sharedQueue;
-(void)saveDataTofileWithtWithURL:(NSURL *)arg1 msg:(id)arg2 andResult:(id)result;

@end

NS_ASSUME_NONNULL_END
