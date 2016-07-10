//
//  NEUInvisibleSafariView.m
//  Pods
//
//  Created by Nikita Pankiv on 7/10/16.
//
//

#import "NEUInvisibleSafariView.h"

@implementation NEUInvisibleSafariView

- (UIView *)hitTest:(CGPoint)point
          withEvent:(UIEvent *)event {
    return [[[[[[UIApplication sharedApplication] windows] firstObject] rootViewController] view] hitTest:point withEvent:event];
}

@end
