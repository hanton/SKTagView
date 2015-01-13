//
// Created by Shaokang Zhao on 01/12/15.
// Copyright (c) 2015 Shaokang Zhao. All rights reserved.
//

#import "SKTagButton.h"
#import "SKTag.h"

@interface SKTagButton ()
@property (nonatomic, strong) SKTag *mTag;
@end

@implementation SKTagButton

+ (instancetype)buttonWithTag:(SKTag *)tag
{
    SKTagButton *btn = [super buttonWithType:UIButtonTypeSystem];
    btn.mTag = tag;
    [btn setTitle:tag.text forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:tag.fontSize];
    btn.backgroundColor = tag.bgColor;
    [btn setTitleColor:tag.textColor forState:UIControlStateNormal];
    [btn addTarget:tag.target action:tag.action forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius = tag.cornerRadius;
    btn.layer.masksToBounds = YES;
    [btn setContentEdgeInsets:tag.padding];
    
    return btn;
}

- (CGSize)intrinsicContentSize
{
    CGSize size = [super intrinsicContentSize];
    return size;
}

@end
