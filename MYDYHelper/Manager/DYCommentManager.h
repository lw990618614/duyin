//
//  DYCommentManager.h
//  MYDYHelper
//
//  Created by apple on 2020/6/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYCommentManager : NSObject
+(instancetype)sharedQueue;
-(void)getCommentsListForTheMovieWithAction;
-(void)goToCommentsWithTapAction;
-(void)tapTheCommentViewWithTapAction;
-(void)tapTheShareViewToEnterTheMovieViewAndComment;

@end

NS_ASSUME_NONNULL_END
