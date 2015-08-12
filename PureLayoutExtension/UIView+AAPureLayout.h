//
//  UIView+AAPureLayout.h
//  Toppy
//
//  Created by Almas Adilbek on 4/24/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AAPureLayout)

- (NSArray *)aa_autoSetDimensions;

- (NSLayoutConstraint *)aa_verticalAlignWithView:(UIView *)view;
- (NSLayoutConstraint *)aa_centerVertical;
- (NSLayoutConstraint *)aa_centerHorizontal;
- (NSArray *)aa_centerInSuperview;

- (NSLayoutConstraint *)aa_pinHorizontalAfterView:(UIView *)view;
- (NSLayoutConstraint *)aa_pinAfterView:(UIView *)view offset:(CGFloat)offset;

- (NSLayoutConstraint *)aa_pinUnderView:(UIView *)view offset:(CGFloat)offset;

- (NSLayoutConstraint *)aa_top:(UIView *)view;
- (NSLayoutConstraint *)aa_top:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_left:(UIView *)view;
- (NSLayoutConstraint *)aa_left:(UIView *)view offset:(CGFloat)offset;
- (NSLayoutConstraint *)aa_right:(UIView *)view;
- (NSLayoutConstraint *)aa_right:(UIView *)view offset:(CGFloat)offset;
- (NSArray *)aa_leftAndRight:(UIView *)view;

- (NSLayoutConstraint *)aa_superviewTop:(CGFloat)inset;
- (NSLayoutConstraint *)aa_superviewLeft:(CGFloat)inset;
- (NSLayoutConstraint *)aa_superviewRight:(CGFloat)inset;
- (NSLayoutConstraint *)aa_superviewBottom:(CGFloat)inset;

- (NSLayoutConstraint *)aa_setWidth:(CGFloat)width;
- (NSLayoutConstraint *)aa_setHeight:(CGFloat)height;

@end
