//
//  ProjectPreviewCollectionViewCell.m
//  Quantenguerilla
//
//  Created by Marius Eilbrecht on 27.04.17.
//  Copyright © 2017 Marius Eilbrecht. All rights reserved.
//

#import "ProjectPreviewCollectionViewCell.h"

@implementation ProjectPreviewCollectionViewCell


- (UIButton *) deleteButton {
    if(!_deleteButton) {
        _deleteButton = [[UIButton alloc] initWithFrame:CGRectMake(259, 5, 45, 30)];
        [self.contentView addSubview:_deleteButton];
    }
    return _deleteButton;
}

// Lazy loading of the imageView
- (UIImageView *) imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(45,30,237,158)];//(64, 20, 264, 198)];
        [self.contentView addSubview:_imageView];
    }
    return _imageView;
}

- (UILabel*) projectName {
    if (!_projectName) {
        _projectName = [[UILabel alloc] initWithFrame:CGRectMake(45,185,237,48)];//(20, 226, 352, 48)];
        _projectName.textAlignment = NSTextAlignmentCenter;
        _projectName.textColor = [UIColor whiteColor];
        [self.contentView addSubview:_projectName];
    }
    return _projectName;
}

// Here we remove all the custom stuff that we added to our subclassed cell
-(void)prepareForReuse {
    [super prepareForReuse];
    
    [_imageView removeFromSuperview];
    [_projectName removeFromSuperview];
    _imageView = nil;
    _projectName = nil;
}


@end
