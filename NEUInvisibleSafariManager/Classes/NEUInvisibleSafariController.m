//
//  NEUInvisibleSafariController.m
//  Pods
//
//  Created by Nikita Pankiv on 7/10/16.
//
//

#import "NEUInvisibleSafariController.h"
#import "NEUInvisibleSafariView.h"

@implementation NEUInvisibleSafariController

- (void)loadView {
    self.view = [[NEUInvisibleSafariView alloc] initWithFrame:[UIScreen mainScreen].bounds];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
}

- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    NSLog(@"[NEUInvisibleSafariManager] Finished Safari request");
    if (self.completion != nil) {
        self.completion(didLoadSuccessfully);
    }
    
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
