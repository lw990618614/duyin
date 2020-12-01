//
//  DYVcManager.m
//  MYDYHelper
//
//  Created by apple on 2020/10/12.
//

#import "DYVcManager.h"
@interface DYVcManager()
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic,assign )NSInteger  index;

@end

@implementation DYVcManager
+(instancetype)sharedQueue
{
    static DYVcManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYVcManager alloc] init];
    });
    return queue;
}


-(void)saveDataTofileWithtWithURL:(NSURL *)arg1 msg:(id)arg2 andResult:(id)result{
    NSString *filePatch = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0]stringByAppendingPathComponent:@"douyin_help_status.plist"];
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:filePatch];

    if  (!dataDictionary){
        dataDictionary = [[NSMutableDictionary alloc]  init];
    }
    
    
    if ([arg1.absoluteString containsString:@"amemv.com/aweme/v1/user/profile/other/?"]) {//个人中心
        NSRange range = [arg1.absoluteString rangeOfString:@"amemv.com/aweme/v1/user/profile/other/?"];
        NSLog(@"所查的字符坐标为：%ld %@",range.location,arg1);

        if([result isKindOfClass:[NSDictionary class]]){
                 NSURL *url =arg1;
                 NSString  *urlstirng  = url.absoluteString;
                 if([arg1 isKindOfClass:[NSURL class]]){
                     NSString * m_c2cNativeUrl2 = [urlstirng substringFromIndex:range.location+range.length];
                     NSArray  *dataarray = [m_c2cNativeUrl2 componentsSeparatedByString:@"&"];
                       NSMutableDictionary *urlDic = [NSMutableDictionary dictionary];
                       for (NSString *string in dataarray) {
                           NSArray  *dicarray = [string componentsSeparatedByString:@"="];
                           if (dicarray.count ==2) {
                               [urlDic setValue:dicarray[1]?dicarray[1]:@"" forKey:dicarray[0]];
                           }
                       }
                     [urlDic addEntriesFromDictionary:result];
 
                     [dataDictionary setValue:urlDic forKey:urlDic[@"user_id"]];

                         BOOL  sucess =   [dataDictionary writeToFile:filePatch atomically:YES];
                          if(sucess ==YES){
                              NSLog(@"用户基本信息 写入成功");

                          }else{
                              NSLog(@"用户基本信息 写入失败");
                          }

                     }
             }
    }else if ([arg1.absoluteString containsString:@"amemv.com/aweme/v1/aweme/post/?"]){//用户发布
        NSRange range = [arg1.absoluteString rangeOfString:@"amemv.com/aweme/v1/aweme/post/?"];
               NSLog(@"所查的字符坐标为：%ld %@",range.location,arg1);

               if([result isKindOfClass:[NSDictionary class]]){
                        NSURL *url =arg1;
                        NSString  *urlstirng  = url.absoluteString;
                        if([arg1 isKindOfClass:[NSURL class]]){
                            NSString * m_c2cNativeUrl2 = [urlstirng substringFromIndex:range.location+range.length];
                            NSArray  *dataarray = [m_c2cNativeUrl2 componentsSeparatedByString:@"&"];
                              NSMutableDictionary *urlDic = [NSMutableDictionary dictionary];
                              for (NSString *string in dataarray) {
                                  NSArray  *dicarray = [string componentsSeparatedByString:@"="];
                                  if (dicarray.count ==2) {
                                      [urlDic setValue:dicarray[1]?dicarray[1]:@"" forKey:dicarray[0]];
                                  }
                              }
                            [urlDic addEntriesFromDictionary:result];
        
                            NSString *key = [NSString stringWithFormat:@"%@%@",urlDic[@"user_id"],@"post"];
                            [dataDictionary setValue:urlDic forKey:key];

                                BOOL  sucess =   [dataDictionary writeToFile:filePatch atomically:YES];
                                 if(sucess ==YES){
                                     NSLog(@"用户基本信息 写入成功");

                                 }else{
                                     NSLog(@"用户基本信息 写入失败");
                                 }

                            }
                    }
    }else if ([arg1.absoluteString containsString:@"lf.amemv.com/webcast/ranklist/hot/?"]){//直播榜列表
        NSRange range = [arg1.absoluteString rangeOfString:@"lf.amemv.com/webcast/ranklist/hot/?"];
               NSLog(@"所查的字符坐标为：%ld %@",range.location,arg1);

               if([result isKindOfClass:[NSDictionary class]]){
                        NSURL *url =arg1;
                        NSString  *urlstirng  = url.absoluteString;
                        if([arg1 isKindOfClass:[NSURL class]]){
                            NSString * m_c2cNativeUrl2 = [urlstirng substringFromIndex:range.location+range.length];
                            NSArray  *dataarray = [m_c2cNativeUrl2 componentsSeparatedByString:@"&"];
                              NSMutableDictionary *urlDic = [NSMutableDictionary dictionary];
                              for (NSString *string in dataarray) {
                                  NSArray  *dicarray = [string componentsSeparatedByString:@"="];
                                  if (dicarray.count ==2) {
                                      [urlDic setValue:dicarray[1]?dicarray[1]:@"" forKey:dicarray[0]];
                                  }
                              }
                            [urlDic addEntriesFromDictionary:result];
        
                            NSString *key = [NSString stringWithFormat:@"%@%@",@"ranklist",@"rank"];
                            [dataDictionary setValue:urlDic forKey:key];

                                BOOL  sucess =   [dataDictionary writeToFile:filePatch atomically:YES];
                                 if(sucess ==YES){
                                     NSLog(@"用户基本信息 写入成功");

                                 }else{
                                     NSLog(@"用户基本信息 写入失败");
                                 }

                            }
                    }
    }
}


@end
