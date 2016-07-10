//
//  NEUInvisibleSafariManager.m
//  Pods
//
//  Created by Nikita Pankiv on 7/10/16.
//
//

#import "NEUInvisibleSafariManager.h"
#import "NEUInvisibleSafariController.h"

@interface NEUInvisibleSafariManager() <SFSafariViewControllerDelegate>

@property (nonatomic, strong) NEUInvisibleSafariController *safariController;

@end

@implementation NEUInvisibleSafariManager

+ (instancetype)shared
{
    static NEUInvisibleSafariManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[NEUInvisibleSafariManager alloc] init];
    });
    return sharedInstance;
}

- (void)sendInvisibleRequest:(NSString*)url withParameters:(NSDictionary*)parameters withCompletion:(NEUInvisibleSafariManagerCompletion)completion {
    [[[[UIApplication sharedApplication] delegate] window] makeKeyAndVisible];
    
    NSString *requestUrl = [self generateRequestUrl:(NSString*)url withParams:parameters];
    
    self.safariController = [[NEUInvisibleSafariController alloc] initWithURL:[NSURL URLWithString:requestUrl]];
    self.safariController.completion = completion;
    self.safariController.view.alpha = 0.0;
    self.safariController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    UIViewController *presentationController = [UIApplication sharedApplication].windows[0].rootViewController;
    [presentationController presentViewController:self.safariController animated:NO completion:nil];
    NSLog(@"[NEUInvisibleSafariManager] Started Safari request");
}

- (NSString*)generateRequestUrl:(NSString*)url withParams:(NSDictionary*)params {
    NSString *paramsStr = @"";
    for (NSString *key in params) {
        paramsStr = [NSString stringWithFormat:@"%@&%@=%@", paramsStr, key, params[key]];
    }
    
    NSString *requestString = [NSString stringWithFormat:@"%@?%@",url, paramsStr];
    
    return requestString;
}


@end
