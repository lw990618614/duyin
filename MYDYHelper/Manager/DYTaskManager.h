//
//  DYTaskManager.h
//  MYDYHelper
//
//  Created by apple on 2020/7/3.
//

#import <Foundation/Foundation.h>
#import "DYTaskModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface DYTaskManager : NSObject

+(instancetype)sharedQueue;
//@property (nonatomic, strong) NSString *city;
//@property (nonatomic, strong) NSString *group_id;
//@property (nonatomic, strong) NSString *name;
//@property (nonatomic, strong) NSString *password;
//@property (nonatomic, strong) NSString *task_id;
//@property (nonatomic, strong) NSString *type;
//@property (nonatomic, strong) NSString *url;//作品链接，点赞用
//@property (nonatomic, strong) NSString *foreign_id;//用户的douyinID
//@property (nonatomic, strong) NSString *content;//用户的douyinID
//
//@property (nonatomic, strong) NSString *TaskResult;
//@property (nonatomic, strong) NSString *isDoing;
//@property (nonatomic, copy) NSString *TaskResultError;//用于给抖音回传值传值
//
//@property (nonatomic, strong) NSString *starTime;//任务开始时间
//@property (nonatomic, strong) NSString *task_type;//
@property (nonatomic, strong) DYTaskModel *model;//

-(BOOL)hasLogined;

@end

NS_ASSUME_NONNULL_END
