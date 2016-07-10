//
//  NEUInvisibleSafariController.h
//  Pods
//
//  Created by Nikita Pankiv on 7/10/16.
//
//

#import <UIKit/UIKit.h>
#import "NEUInvisibleSafariManager.h"


@interface NEUInvisibleSafariController : SFSafariViewController <SFSafariViewControllerDelegate>

@property (nonatomic, strong) NEUInvisibleSafariManagerCompletion completion;

@end
