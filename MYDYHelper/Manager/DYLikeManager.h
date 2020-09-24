//
//  DYLikeManager.h
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYLikeManager : NSObject
@property (nonatomic, copy) NSString  *likeBoardUrl;

+(instancetype)sharedQueue;
-(void)likeTheMovieWithAction;
-(void)tapTheShareViewToEnterTheheMovieView;

@end

NS_ASSUME_NONNULL_END
