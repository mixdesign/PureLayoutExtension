//
//  UIView+AAPureLayout.m
//  Toppy
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 mixdesign.kz All rights reserved.
//

#import <PureLayout/ALView+PureLayout.h>
#import "UIView+AAPureLayout.h"

@implementation UIView (AAPureLayout)

- (NSArray *)aa_autoSetDimensions {
    return [self autoSetDimensionsToSize:self.frame.size];
}

- (NSLayoutConstraint *)aa_verticalAlignWithView:(UIView *)view {
    return [self autoAlignAxis:ALAxisHorizontal toSameAxisOfView:view];
}

- (NSLayoutConstraint *)aa_centerVertical {
    return [self autoAlignAxisToSuperviewAxis:ALAxisHorizontal];
}

- (NSLayoutConstraint *)aa_centerHorizontal {
    return [self autoAlignAxisToSuperviewAxis:ALAxisVertical];
}

- (NSArray *)aa_centerInSuperview {
    return @[[self aa_centerHorizontal],[self aa_centerVertical]];
}


- (NSLayoutConstraint *)aa_pinHorizontalAfterView:(UIView *)view {
    return [self aa_pinAfterView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view {
    return [self aa_pinUnderView:view offset:0];
}

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset
{
    return [self autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_top:(UIView *)view {
    return [self aa_top:view offset:0];
}

- (NSLayoutConstraint *)aa_top:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:view withOffset:offset];;
}

- (NSLayoutConstraint *)aa_left:(UIView *)view {
    return [self aa_left:view offset:0];
}

- (NSLayoutConstraint *)aa_left:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:view withOffset:offset];
}

- (NSLayoutConstraint *)aa_right:(UIView *)view {
    return [self aa_right:view offset:0];
}

- (NSLayoutConstraint *)aa_right:(UIView *)view offset:(CGFloat)offset {
    return [self autoPinEdge:ALEdgeRight toEdge:ALEdgeRight ofView:view withOffset:offset];
}


- (NSArray *)aa_leftAndRight:(UIView *)view {
    NSLayoutConstraint *leftConstraint = [self aa_left:view];
    NSLayoutConstraint *rightConstraint = [self aa_right:view];
    return @[leftConstraint, rightConstraint];
}

- (NSLayoutConstraint *)aa_superviewTop:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:inset];
}

- (NSLayoutConstraint *)aa_superviewLeft:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:inset];
}

- (NSLayoutConstraint *)aa_superviewRight:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeRight withInset:inset];
}

- (NSLayoutConstraint *)aa_superviewBottom:(CGFloat)inset {
    return [self autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:inset];
}

- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width {
    return [self autoSetDimension:ALDimensionWidth toSize:width];
}

- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height {
    return [self autoSetDimension:ALDimensionHeight toSize:height];
}


@end
