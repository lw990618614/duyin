//
//  SocketManager.m
//  AngelClient
//
//  Created by apple on 2020/6/11.
//  Copyright © 2020 lby. All rights reserved.
//

#import "SocketManager.h"
#import "GCDAsyncSocket.h"
#import "YMSocketUtils.h"
#import <UIKit/UIKit.h>

@interface   SocketManager()<GCDAsyncSocketDelegate>
@property (strong, nonatomic) GCDAsyncSocket *clientSocket;
@end


@implementation SocketManager

+(instancetype)sharedQueue
{
    
    static SocketManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[SocketManager alloc] init];
        NSString *documentsPath = kTaskFilePath;
        NSString *plistPath = [documentsPath stringByAppendingPathComponent:@"MY_Identiferi.plist"];
        BOOL isExit  = [WHCFileManager isExistsAtPath:plistPath];
        if (!isExit) {
        }else{
            NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
            if (dataDictionary[@"device_indentifer"]) {
                queue.openudid = dataDictionary[@"device_indentifer"];
                queue.deviectype =dataDictionary[@"deViceType"];
            }else{
                exit(0);
            }
            
        }
    });
    return queue;
}

-(void)setDeviectype:(NSString *)deviectype{
    _deviectype = deviectype;
    if (_deviceBlock) {
        _deviceBlock(deviectype);
    }
}

// 开始连接
- (void)connectAction
{
    // 链接服务器
    if (!self.connected)
    {
        self.clientSocket = [[GCDAsyncSocket alloc] initWithDelegate:self delegateQueue:dispatch_get_main_queue()];
        NSLog(@"开始连接%@",self.clientSocket);
        
        NSError *error = nil;
        self.connected = [self.clientSocket connectToHost:kAddressHost onPort:[kAddressPort integerValue] viaInterface:nil withTimeout:-1 error:&error];
        if(self.connected)
        {
            [self showMessageWithStr:@"客户端尝试连接"];
        }
        else
        {
            self.connected = NO;
            [self showMessageWithStr:@"客户端未创建连接"];
        }
    }
    else
    {
        [self showMessageWithStr:@"与服务器连接已建立"];
    }
}

// 发送数据
- (void)sendMessageAction:(NSDictionary *)sender
{
    //    NSData *data = [self.messageTextF.text dataUsingEncoding:NSUTF8StringEncoding];
    // withTimeout -1 : 无穷大,一直等
    // tag : 消息标记
    
    if ([sender isKindOfClass:[NSDictionary class]]) {
        NSMutableData *data = [NSMutableData new];
        
        NSData *msgData =[NSJSONSerialization dataWithJSONObject:sender options:NSJSONWritingPrettyPrinted error:nil];
        [data appendData:[YMSocketUtils bytesFromUInt32:msgData.length]];
        [data appendData:msgData];
        [self.clientSocket writeData:data withTimeout:- 1 tag:0];
    }else{
        NSLog(@"数据请传输字典格式");
    }
    
    
}

#pragma mark - GCDAsyncSocketDelegate

/**
 连接主机对应端口号
 
 @param sock 客户端socket
 @param host 主机
 @param port 端口号
 */
- (void)socket:(GCDAsyncSocket *)sock didConnectToHost:(NSString *)host port:(uint16_t)port {
    //    NSLog(@"连接主机对应端口%@", sock);
    [self showMessageWithStr:@"链接成功"];
    [self showMessageWithStr:[NSString stringWithFormat:@"服务器IP: %@-------端口: %d", host,port]];
    
    [self.clientSocket readDataWithTimeout:- 1 tag:0];
    self.connected = YES;
    NSLog(@"socketsocketsocket连接成功连接成功连接成功连接成功");
    
    if (self.msgBLock) {
        self.msgBLock(@"连接成功");
    }

}

// 心跳连接
- (void)longConnectToSocket
{
    NSDictionary * dic;
    if (!self.deviectype) {
        dic = @{@"app":@"douyin",@"class":@"device",@"method":@"get_param",@"param_array":@{@"openid": self.openudid}};
    }else{
        dic =@{@"type":@"ping",@"device_key":self.deviectype?self.deviectype:@""};
    }
    
    //    NSDictionary * dic =[NSDictionary new];
    NSMutableData *data = [NSMutableData new];
    NSData *msgData =[NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    [data appendData:[YMSocketUtils bytesFromUInt32:msgData.length]];
    [data appendData:msgData];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    
    //现在时间,你可以输出来看下是什么格式
    
    NSDate *datenow = [NSDate date];
    
    //----------将nsdate按formatter格式转成nsstring
    
    NSString *currentTimeString = [formatter stringFromDate:datenow];
    NSLog(@"发送心跳 时间 %@",currentTimeString);
    [self.clientSocket writeData:data withTimeout:- 1 tag:0];
    
    
//    NSArray *doneArry =  [[TaskManager sharedQueue] getTheCanUpdata_TaskFromCache];
//    if (doneArry.count) {
//        NSArray *taskArray = [[TaskManager sharedQueue] getTheTaskFromCache];
//
//        MySqliteModel *model = doneArry[0];
//
//        DYSaveAccountModel  *info = [[DYSaveAccountModel alloc] init];
//        info.param_array.device_number = [SocketManager sharedQueue].deviectype;
//        info.param_array.task_id = model.task_id;
//        info.param_array.is_finish = taskArray.count == 1;
//        info.param_array.report_id = model.report_id;
//
//        TaskMssageInfo *msg = [TaskMssageInfo new];
//        msg.request_info = @"";
//        msg.status = @"3";
//        msg.account_id = model.account_id;
//        msg.ip =[AngeCommon getCurrentLocalIP];
//        NSDate *datenow = [NSDate date];
//        double timeMargin  = [datenow timeIntervalSince1970] *1000 - model.starTime.doubleValue;
//        msg.logintime  = [NSString stringWithFormat:@"%ld", (long)timeMargin] ;
//
//        [info.param_array.account_info_list addObject:msg];
//        NSMutableDictionary *reuslt =[info mj_keyValues];
//        reuslt[@"class"] = @"report";
//        [[SocketManager sharedQueue] sendMessageAction:reuslt];
//    }
//    NSArray *removeArry =  [[TaskManager sharedQueue] getTheCanUpdata_TaskFromCache];
//    NSArray *taskArray = [[TaskManager sharedQueue] getTheTaskFromCache];
//    NSArray *doneArry =  [[TaskManager sharedQueue] getTheCanUpdata_TaskFromCache];
//    for (int i = 0 ; i <doneArry.count ; i ++) {
//        MySqliteModel *model = doneArry[i];
//
//        DYUpTaskResultModel *msg = [DYUpTaskResultModel new];
//        msg.param_array.device_number = self.deviectype;
//        msg.param_array.task_id = model.task_id;
//        msg.param_array.task_number = model.task_number;
//        msg.param_array.is_finish = taskArray.count == 1;
//        msg.param_array.report_id = model.report_id;
//        NSString *task_id =msg.param_array.task_id;
//
//        TaskAccontInfo *info = [TaskAccontInfo new];
//        info.request_info = @"";
//        info.status = @"4";
//        info.ip =[AngeCommon getCurrentLocalIP];
//        info.account_id = model.account_id;
//        double timeMargin  = [datenow timeIntervalSince1970] *1000 - model.starTime.doubleValue;
//        info.logintime  = [NSString stringWithFormat:@"%ld", (long)timeMargin] ;
////        [msg.param_array.account_info_list addObject:[info mj_keyValues]];
//
//        if (task_id.intValue == 70001) {
//            msg.method = @"report_yang_hao_task_state";
//            [msg.param_array.yanghao_info_list addObject:[info mj_keyValues]];
//            msg.param_array.account_info_list = nil;
//        }else if (task_id.intValue == 30001){
//            msg.method = @"report_issuing_account_state";
//            info.status = @"3";
//            [msg.param_array.account_info_list addObject:[info mj_keyValues]];
//            msg.param_array.yanghao_info_list = nil;
//
//        }else{
//            msg.method = @"report_ordinary_task";
//            [msg.param_array.account_info_list addObject:[info mj_keyValues]];
//            msg.param_array.yanghao_info_list = nil;
//        }
//
//        NSMutableDictionary *reuslt =[msg mj_keyValues];
//        reuslt[@"class"] = @"report";
//        [[SocketManager sharedQueue] sendMessageAction:reuslt];
//        [self showMessageWithStr:@"数据上报"];
//    }
//
//    if (doneArry.count == 0) {
//        [self showMessageWithStr:@"发送心跳"];
//    }
//
//
//    NSArray *removeArry =  [[TaskManager sharedQueue] getTheCanRemove_TaskFromCache];
//    for (int i = 0 ; i <removeArry.count ; i ++) {
//        MySqliteModel *model = removeArry[i];
//        [[TaskManager sharedQueue] removeTheTaskFromCaCheWithReportID:model.report_id];
//    }
    
//
//    if (![[TaskManager sharedQueue] doingTask]) {
//        [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//    }
}

//注意：如果是三字节utf-8，第二字节错误，则先替换第一字节内容(认为此字节误码为三字节utf8的头)，然后判断剩下的两个字节是否非法；
- (void)socket:(GCDAsyncSocket *)sock didReadData:(NSData *)data withTag:(long)tag
{
    
    //    NSString *text = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    //    [self showMessageWithStr:text];
//    if (data.length > 4) {
//        NSError *error;
//        NSData *mydata =  [[TaskManager sharedQueue] replaceNoUtf8:data];
//        NSString* aStr = [[NSString alloc] initWithData:mydata encoding:NSUTF8StringEncoding];
//        NSData *jsonData = [[aStr substringFromIndex:4] dataUsingEncoding:NSUTF8StringEncoding];
//        NSError *err;
//        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
//                                                            options:NSJSONReadingMutableContainers
//                                                              error:&err];
//        if (!error) {
//            NSString *code =dic[@"code"];
//
//            if (code.intValue == 200) {
//                NSString *tasid =dic[@"task_id"];
//                NSLog(@"task _result  = %@",dic);
//
//                if (tasid.intValue == 10001) {//喜欢点赞
//                    DYTaskLikeModel *task = [DYTaskLikeModel mj_objectWithKeyValues:dic];
//                    NSArray *cacheArr = [[TaskManager sharedQueue] getTheTaskFromCache];
//
//                    if (cacheArr.count == 0) {
//                        for (int i = 0; i < task.data.task.accounts.count; i ++) {
//                            DYEveryLikeTaskInfo *info = [DYEveryLikeTaskInfo new];
//                            info.task_id =  task.task_id;
//                            info.task_number =  task.task_number;
//                            info.task_name =task.task_name;
//                            info.account_id =[NSString stringWithFormat:@"%@",task.data.task.accounts[i]];
//                            info.url = task.data.task.url;
//                            MySqliteModel *model = [[TaskManager sharedQueue] thranceTaskLikeModeToSqliteModel:info];
//                            [[TaskManager sharedQueue] insertTaskToCacheWithModel:model];
//                        }
//                    }
//                    if (![[TaskManager sharedQueue] doingTask]) {
//                        [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//                    }
//
//
//                }else if (tasid.intValue == 20001) {
//                    NSString *deviceName = dic[@"data"][@"device_key"];
//                    if (!self.deviectype &&deviceName) {
//                        self.deviectype =deviceName;
//                        [self saveDeviceTypeTopPlist];
//                    }
//                }else if(tasid.intValue == 30001){//下发账户
//                    DYAccountInfo *user = [DYAccountInfo mj_objectWithKeyValues:dic];
//                    NSArray *personArr = [[TaskManager sharedQueue] getTheTaskFromCache];
//                    if (personArr.count== 0) {
//                        for (int i = 0; i< user.data.count; i ++) {
//                            AccountEveryInfo *info = user.data[i];
//                            MySqliteModel *model = [[TaskManager sharedQueue] thranceAccountToSqliteModel:info];
//                            model.task_id = user.task_id;
//                            [[TaskManager sharedQueue] insertTaskToCacheWithModel:model];
//                        }
//                    }
//                    if (![[TaskManager sharedQueue] doingTask]) {
//                        [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//                    }
//
//                }else if (tasid.intValue == 30002){//属于任务上传吧 返回结果
//                    if (dic[@"data"][@"report_id"]) {
//                        [[TaskManager sharedQueue] removeTheTaskFromCaCheWithReportID:dic[@"data"][@"report_id"]];
//                        [self showMessageWithStr:@"任务上报返回"];
//                    }
//                }else if (tasid.intValue == 40001){//属于关注用户
//
//                    DYTaskModel *task = [DYTaskModel mj_objectWithKeyValues:dic];
//                    NSArray *cacheArr = [[TaskManager sharedQueue] getTheTaskFromCache];
//                    if (cacheArr.count == 0) {
//                        for (int i = 0; i < task.data.task.accounts.count; i ++) {
//                            DYEveryTaskInfo *info = [DYEveryTaskInfo new];
//                            info.task_id =  task.task_id;
//                            info.task_number =  info.task_number;
//                            info.task_name =task.task_name;
//                            info.account_id =[NSString stringWithFormat:@"%@",task.data.task.accounts[i]];
//                            info.url = task.data.task.url;
//                            info.foreign_id = task.data.task.foreign_id;
//                            MySqliteModel *model = [[TaskManager sharedQueue] thranceTaskModeToSqliteModel:info];
//
//                            [[TaskManager sharedQueue] insertTaskToCacheWithModel:model];
//                        }
//                    }
//                    if (![[TaskManager sharedQueue] doingTask]) {
//                        [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//                    }
//
//                }else if (tasid.intValue == 50001){//分享
//
//                }else if (tasid.intValue == 60001){//具体任务评论
//                    DYTaskCommentModel *task = [DYTaskCommentModel mj_objectWithKeyValues:dic];
//                    NSArray *cacheArr = [[TaskManager sharedQueue] getTheTaskFromCache];
//
//                    if (cacheArr.count == 0) {
//                        for (int i = 0; i < task.data.task.comment_list.count; i ++) {
//                            DYEveryCommentTaskInfo *info = task.data.task;
//                            DYComment_listInfo *task_model =task.data.task.comment_list[i];
//                            info.account_id =task_model.account_id  ;
//                            info.content = task_model.content;
//                            info.task_name =task.task_name;
//                            info.url = task.data.task.url;
////                             info.url = @"https://v.douyin.com/JNMbPCB/";
//
//                            MySqliteModel *model = [[TaskManager sharedQueue] thranceCommentModeToSqliteModel:info];
//                            [[TaskManager sharedQueue] insertTaskToCacheWithModel:model];
//                        }
//                    }
//                    if (![[TaskManager sharedQueue] doingTask]) {
//                        [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//                    }
//
//                }else if (tasid.intValue == 70001){//具体养号任务
//                    DYTaskFeedModel *task = [DYTaskFeedModel mj_objectWithKeyValues:dic];
//                    NSArray *cacheArr = [[TaskManager sharedQueue] getTheTaskFromCache];
//
//                    if (cacheArr.count == 0) {
//                        DYEveryFeedTaskInfo * info =task.data.task;
//                        for (int i = 0; i < info.accounts.count; i ++) {
//                            info.task_id   =task.task_id;
//                            DYFeed_listInfo *userInfo =info.accounts[i];
//                            info.account_id =userInfo.account_id;
//                            MySqliteModel *model = [[TaskManager sharedQueue] thranceFeedModeToSqliteModel:info];
//                            [[TaskManager sharedQueue] insertTaskToCacheWithModel:model];
//                        }
//                    }
//                    if (![[TaskManager sharedQueue] doingTask]) {
//                        [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//                    }
//
//                }else if (tasid.intValue == 80001){//具体任务评论
//
//                }
//
//
//
//            }else if (code.intValue == 10){
//                NSLog(@"心跳接收");
//                if (![[TaskManager sharedQueue] doingTask]) {
//                    [[TaskManager sharedQueue] taskResultFromDouYinAndStartNewTask];
//                }
//
//            }
//
//        }else{
//            NSLog(@"数据解析出错 无法执行");
//        }
//
//    }
    // 读取到服务器数据值后,能再次读取
    [self.clientSocket readDataWithTimeout:- 1 tag:0];
}


// 信息展示
- (void)showMessageWithStr:(NSString *)str
{
    if (self.msgBLock) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        NSDate *datenow = [NSDate date];
        [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
        NSString *currentTimeString = [formatter stringFromDate:datenow];
       NSString *msg =  [NSString stringWithFormat:@"%@ %@",currentTimeString,str];
        self.msgBLock(msg);
    }
    //    self.showMessageTextV.text = [self.showMessageTextV.text stringByAppendingFormat:@"%@\n", str];
}

/**
 客户端socket断开
 
 @param sock 客户端socket
 @param err 错误描述
 */
- (void)socketDidDisconnect:(GCDAsyncSocket *)sock withError:(NSError *)err
{
    //    NSLog(@"断开的sock:%@",sock);
    //    NSLog(@"断开的sock:%@",self.clientSocket);
    [self showMessageWithStr:@"断开连接"];
    self.clientSocket.delegate = nil;
    //    [self.clientSocket disconnect];
    self.clientSocket = nil;
    self.connected = NO;
    NSLog(@"链接已断开");
    
    
    //    [self performSelector:@selector(connectAction) withObject:nil afterDelay:3];
}


//判断缓存是否还有任务
-(void)saveDeviceTypeTopPlist{
    NSString *documentsPath = kTaskFilePath;
    NSString *plistPath = [documentsPath stringByAppendingPathComponent:@"MY_Identiferi.plist"];
    BOOL isExit  = [WHCFileManager isExistsAtPath:plistPath];
    if (isExit) {
        NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
        dataDictionary[@"deViceType"] = self.deviectype;
        BOOL result =   [dataDictionary writeToFile:plistPath atomically:YES];
        if (!result) {
            exit(0);
        }
    }
}

//-(NSString*)getCurrentLocalIP
//{
//    NSString *address = nil;
//    struct ifaddrs *interfaces = NULL;
//    struct ifaddrs *temp_addr = NULL;
//    int success = 0;
//    // retrieve the current interfaces - returns 0 on success
//    success = getifaddrs(&interfaces);
//    if (success == 0) {
//        // Loop through linked list of interfaces
//        temp_addr = interfaces;
//        while(temp_addr != NULL) {
//            if(temp_addr->ifa_addr->sa_family == AF_INET) {
//                // Check if interface is en0 which is the wifi connection on the iPhone
//                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
//                    // Get NSString from C String
//                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
//                }
//            }
//            temp_addr = temp_addr->ifa_next;
//        }
//    }
//    // Free memory
//    freeifaddrs(interfaces);
//    return address;
//}


@end

