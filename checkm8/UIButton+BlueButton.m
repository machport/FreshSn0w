//
//  UIButton+BlueButton.m
//  checkm8
//
//  Created by Henry on 9/29/19.
//  Copyright © 2019 Henry. All rights reserved.
//

#import "UIButton+BlueButton.h"

#import <AppKit/AppKit.h>


@implementation BlueButton : NSButtonCell

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    [self setBackgroundColor:[NSColor systemBlueColor]];
    return self;
}



@end
