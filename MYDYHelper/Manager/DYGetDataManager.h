//
//  DYGetDataManager.h
//  MYDYHelper
//
//  Created by apple on 2020/9/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYGetDataManager : NSObject


@property (nonatomic, strong) AWEAwemePlayInteractionViewController *viewController;//
@property (nonatomic, strong) NSMutableArray *dataArray;//
@property (nonatomic, assign) NSInteger   nodataTimes;//


+(instancetype)sharedQueue;
-(void)searchTheTargetUserWithDouyinID:(NSString *)douyinID;

-(void)configDataWithDic:(NSMutableDictionary *)data;

@end

NS_ASSUME_NONNULL_END
