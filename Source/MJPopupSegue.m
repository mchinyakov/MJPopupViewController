//
//  MJPopupSegue.m
//  MJPopupViewControllerDemo
//
//  Created by Mikhail Chinyakov on 18.01.14.
//
//

#import "MJPopupSegue.h"

#import "MJPopupBackgroundView.h"
#import "UIViewController+MJPopupViewController.h"

@implementation MJPopupSegue

- (id)init
{
    self = [super init];
    if (self) {
        self.animation = MJPopupViewAnimationFade;
    }
    return self;
}

- (void)perform
{
    UIViewController *source =  self.sourceViewController;
    source.mj_disableCloseOnBackgroundTap = self.disableCloseOnBackgroundTap;

    [source presentPopupViewController:self.destinationViewController
                         animationType:self.animation];
}

@end
