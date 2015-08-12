//
//  ViewController.m
//  PureLayoutExtension
//
//  Created by Almas Adilbek on 8/12/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import "ViewController.h"
#import "ALView+PureLayout.h"
#import "UIView+AAPureLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Light gray container.
    UIView *containerView = [UIView newAutoLayoutView];
    containerView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:containerView];
    [containerView aa_superviewLeft:20];
    [containerView aa_superviewRight:50];
    [containerView aa_centerVertical];

    // Black text label.
    UILabel *textLabel = [UILabel newAutoLayoutView];
    textLabel.backgroundColor = [UIColor clearColor];
    textLabel.font = [UIFont systemFontOfSize:14];
    textLabel.textColor = [UIColor blackColor];
    textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    textLabel.numberOfLines = 0;
    textLabel.text = @"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    [containerView addSubview:textLabel];

    [textLabel aa_superviewTop:10];
    [textLabel aa_superviewLeft:10];
    [textLabel aa_superviewRight:10];

    // Orange view
    UIView *orangeView = [UIView newAutoLayoutView];
    orangeView.backgroundColor = [UIColor orangeColor];
    [orangeView aa_setWidth:150];
    [orangeView aa_setHeight:50];
    [containerView addSubview:orangeView];

    [orangeView aa_left:textLabel];
    [orangeView aa_pinUnderView:textLabel offset:20];
    [orangeView aa_superviewBottom:5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
