//
//  NEUInvisibleSafariManager.h
//  Pods
//
//  Created by Nikita Pankiv on 7/10/16.
//
//

#import <Foundation/Foundation.h>

@import SafariServices;

typedef void(^NEUInvisibleSafariManagerCompletion)(BOOL success);

@interface NEUInvisibleSafariManager : NSObject

+ (instancetype)shared;
- (void)sendInvisibleRequest:(NSString*)url withParameters:(NSDictionary*)parameters withCompletion:(NEUInvisibleSafariManagerCompletion)completion;

@end
