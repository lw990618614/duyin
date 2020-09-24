//
//  DYLoginManager.m
//  MYDYHelper
//
//  Created by apple on 2020/6/22.
//

#import "DYLoginManager.h"
#import "DYCommonApi.h"
#import "WHCFileManager.h"
#import <PTFakeTouch/PTFakeTouch.h>


@implementation DYLoginManager
+(instancetype)sharedQueue
{
    
    static DYLoginManager * queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = [[DYLoginManager alloc] init];
    });
    return queue;
}

- (void)feedTaskDidFinsh{
    [self TaskDidFinishWithError:@""];
}

- (void)loginSuccess{
    
    //    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //        int locationX =SCREEN_WIDTH - 20;
    //        int locationY =140;
    //        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
    //        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
    //        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
    //    });
    
    
    int arcradom =(arc4random() % 20);
    int locationX =100 +  arcradom;
    int locationY =500 +  arcradom;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(9.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        
        [self performSelector:@selector(TaskDidFinishWithError:) withObject:nil afterDelay:2];
        
    });
    
    
}

-(void)letChupengStarToWork{
    //    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    //    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    //    NSString *tap1aaatring = self.recongtiionArray[0];
    //    NSArray *tap1Aray =[tap1aaatring componentsSeparatedByString:@","];
    //    NSUInteger touchTap1X =[tap1Aray[0] intValue]*0.5 + 10;
    //    NSUInteger touchTap1Y =[tap1Aray[0] intValue]*0.5 + self.imageFrame.origin.y + 80;
    //    dataDictionary[@"tapX1"]= [NSString stringWithFormat:@"%d",touchTap1X];
    //    dataDictionary[@"tapY1"]= [NSString stringWithFormat:@"%d",touchTap1Y];
    //
    //    NSString *tap2aaatring = self.recongtiionArray[1];
    //    NSArray *tap2Aray =[tap2aaatring componentsSeparatedByString:@","];
    //    NSUInteger touchTap2X =[tap2Aray[0] intValue] *0.5 + 10;
    //    NSUInteger touchTap2Y =[tap2Aray[0] intValue]*0.5 + self.imageFrame.origin.y + 80;
    //    dataDictionary[@"tapX2"]= [NSString stringWithFormat:@"%d",touchTap2X];
    //    dataDictionary[@"tapY2"]= [NSString stringWithFormat:@"%d",touchTap2Y];
    //
    //
    //    NSUInteger minX = self.imageFrame.size.width *0.5;
    //    NSUInteger minY =self.imageFrame.size.height + self.imageFrame.origin.y - 15;
    //
    //    dataDictionary[@"minX"]= [NSString stringWithFormat:@"%d",minX];
    //    dataDictionary[@"minY"]= [NSString stringWithFormat:@"%d",minY];
    //
    //    [dataDictionary setObject:@"1" forKey:@"chupengCanStart"];
    //    [dataDictionary writeToFile:plistPath atomically:YES];
    
}

- (void)startReisterUserInfoToIphone{//点击加号
    int locationX =SCREEN_WIDTH *0.9;
    int locationY =SCREEN_HEIGHT -20;
    NSLog(@"startReisterUserInfoToIphone");
    
    NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
    [self performSelector:@selector(alterTheLoginViewOut) withObject:nil afterDelay:5];
}

-(void)alterTheLoginViewOut{
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotificationAddPlusBtnClick object:nil userInfo:nil];
}

-(void)loginActionDidFinish{
    [self TaskDidFinishWithError:@""];
}

- (void)p_timerAction {
    self.times ++;
    
    int arcradom =(arc4random() % 20);
    int locationX =100 +  arcradom;
    int locationY =500 +  arcradom;
    
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(8.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(12.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        
    });
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(16.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        
    });
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(20.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
        [NSThread sleepForTimeInterval:1];
        
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseMoved)];
        [NSThread sleepForTimeInterval:0.3];
        [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationX) withTouchPhase:(UITouchPhaseEnded)];
        [self performSelector:@selector(startReisterUserInfoToIphone) withObject:nil afterDelay:5];
        
    });
    
}



-(void)starToShartScreen{
    if(self.waitingCodeRespond== NO){
        self.waitingCodeRespond = YES;
        [self performSelector:@selector(starTdssdsdoShartScreen) withObject:nil afterDelay:5];
    }
}

-(void)starToUpScreenImageToSevers{
    [self screenshotWithRect:self.imageFrame withTimes:self.times++];
}

- (void)screenshotWithRect:(CGRect)frame withTimes:(NSInteger)Times
{
    //    CGRect frame = view.frame;
    if (Times>2) {
        //        [DYCommonApi TaskDidFinishWithError:@"102"];
        return ;
    }
    UIGraphicsBeginImageContextWithOptions(self.screenWebView.frame.size, YES, 0.0);
    //       UIView * view = ;
    //把控制器View的内容绘制到上下文当中.
    //layer是不能够直接绘制的.要用渲染的方法才能够让它绘制到上下文当中。UIGraphicsGetCurrentContext()
    [self.screenWebView.layer renderInContext:UIGraphicsGetCurrentContext()];
    //从上下文当中生成一张图片
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文.
    UIGraphicsEndImageContext();
    /*
     //image:要把图片转成二进制流，compressionQuality:可压缩质量.
     NSData*data =UIImagePNGRepresentation(viewImage);
     */
    
    //上面我们获得了一个全屏的截图，下边的方法是对这个图片进行裁剪。
    CGImageRef imageRef =viewImage.CGImage;
    //这里要特别注意，这里的宽度 CGImageGetWidth(imageRef) 是图片的像素宽（高度同解），所以计算截图区域时需要按比例来；
    //这里举的例子是宽高屏幕1/2位置在中心
    CGRect rect =  CGRectMake(0, 90, CGImageGetWidth(imageRef), CGImageGetHeight(imageRef) -250);//这里可以设置想要截图的区域
    
    CGImageRef imageRefRect =CGImageCreateWithImageInRect(imageRef, rect);
    
    UIImage *sendImage =[[UIImage alloc] initWithCGImage:imageRefRect];
    UIImageWriteToSavedPhotosAlbum(sendImage, self, @selector ( image:didFinishSavingWithError:contextInfo:), nil);//保存图片到照片库
    [self upImageDataToServersWithImage:sendImage];
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo{
    if (error) {
        NSLog(@"保存失败");
    }else{
        NSLog(@"保存成功");
    }
}

-(void)upImageDataToServersWithImage:(UIImage *)image {
    NSData *imgData = UIImageJPEGRepresentation(image, 0.5f);
    
    NSString *encodedImageStr = [imgData base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    
    NSMutableDictionary *dic = [NSMutableDictionary new];
    dic[@"username"] = @"lw990618614";
    dic[@"password"] = @"Admin!@#123";
    dic[@"captchaData"] = encodedImageStr;
    dic[@"captchaType"] = @"1303";
    dic[@"captchaMinLength"] = @"0";
    dic[@"captchaMaxLength"] = @"0";
    dic[@"workerTipsId"] = @"0";
    dic[@"softwareId"] = @"20015";
    dic[@"softwareSecret"] = @"Fd8Iwwf7D55jxbJsGcVnuIJEmB6pKhqqjKIPuMIE";
    NSError *requestError;
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSMutableURLRequest *request = [manager.requestSerializer requestWithMethod:@"POST" URLString:@"https://v2-api.jsdama.com/upload" parameters:nil error:&requestError];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    request.timeoutInterval = 30;
    // 设置header
    //       [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    //       [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    // body
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    
    NSString *jsonString;
    
    if (jsonData) {
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    NSData *postData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    [request setHTTPBody:postData];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:^(NSProgress * _Nonnull uploadProgress) {
        
    } downloadProgress:^(NSProgress * _Nonnull downloadProgress) {
        
    } completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        self.waitingCodeRespond = NO;
        if (!error) {
            if (responseObject[@"data"][@"recognition"]) {
                self.recongtiionArray= responseObject[@"data"][@"recognition"];
                [self letChupengStarToWork];
                
            }else{
                [self starToUpScreenImageToSevers];
            }
        }else{
            self.waitingCodeRespond = NO;
        }
    }];
    [dataTask resume];
    
    
    
}


-(void)TaskDidFinishWithError:(NSString *)errorNumber{
    NSString *plistPath = [kUserFileDeviceAndTaskPath stringByAppendingPathComponent:kTaskPlist];
    NSMutableDictionary *dataDictionary = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    NSString *loginStep =  dataDictionary[@"step"];
    if (loginStep.intValue == 0) {
        [dataDictionary setObject:@"1" forKey:@"step"];
    }else if (loginStep.intValue == 1){
        [dataDictionary setObject:@"2" forKey:@"step"];
        
    }else if (loginStep.intValue == 2){
        [dataDictionary setObject:@"1" forKey:@"TaskResult"];
    }
    
    if (errorNumber.intValue) {
        [dataDictionary setObject:errorNumber forKey:@"TaskResultError"];
    }
    BOOL  resut =   [dataDictionary writeToFile:plistPath atomically:YES];
    NSLog(@"TaskDidFinishWithError %d",resut);
    Class LSApplicationWorkspace_class = objc_getClass("LSApplicationWorkspace");
    
    NSObject * workspace = [LSApplicationWorkspace_class performSelector:@selector(defaultWorkspace)];
    [workspace performSelector:@selector(openApplicationWithBundleID:) withObject:@"com.lby.AngelClient"];
    
    [self progranExit];
}

-(void)progranExit{
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    
    [UIView animateWithDuration:1.0f animations:^{
        
        window.alpha = 0;
        
        window.frame = CGRectMake(0, window.bounds.size.width, 0, 0);
        
    } completion:^(BOOL finished) {
        
        abort();
        //     exit(1);
        
    }];
}


- (void)loginStepTwo{//
    int locationX =SCREEN_WIDTH *0.25;
    int locationY =SCREEN_HEIGHT -20;
    NSLog(@"loginStepTwo");
    
    NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
    [self performSelector:@selector(TaskDidFinishWithError:) withObject:nil afterDelay:10];
    
}


- (void)loginStepThree{//
    int locationX =SCREEN_WIDTH *0.45;
    int locationY =SCREEN_HEIGHT -20;
    NSLog(@"loginStepThree");
    NSInteger Id = [PTFakeTouch fakeTouchId:[PTFakeTouch getAvailablePointId] AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseBegan)];
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseMoved)];
    [PTFakeTouch fakeTouchId:Id AtPoint:CGPointMake(locationX, locationY) withTouchPhase:(UITouchPhaseEnded)];
    [self performSelector:@selector(TaskDidFinishWithError:) withObject:nil afterDelay:10];
}


@end
