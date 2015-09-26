//
//  PosterDetailView.m
//  HWMovie
//
//  Created by hyrMac on 15/7/25.
//  Copyright (c) 2015年 hyrMac. All rights reserved.
//

#import "PosterDetailView.h"
#import "UIImageView+WebCache.h"

@implementation PosterDetailView
- (void)setMovieModal:(MovieModal *)movieModal {
    _movieModal = movieModal;
    [self setNeedsLayout];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.backgroundColor = [UIColor orangeColor];
    
    NSString *str = [_movieModal.images objectForKey:@"medium"];
    [_movieImageView sd_setImageWithURL:[NSURL URLWithString:str]];
    
    _titleLabel.text = _movieModal.title;
    _titleLabel.numberOfLines = 0;
    [_titleLabel sizeToFit];
    
//    _englishTitleLabel.text = _movieModal.title;
//    _englishTitleLabel.numberOfLines = 0;
//    [_englishTitleLabel sizeToFit];
    
    _yearLabel.text = [NSString stringWithFormat:@"年份：%@",_movieModal.year];
    _yearLabel.numberOfLines = 0;
    [_yearLabel sizeToFit];
    
    
    _averageLabel.text = [NSString stringWithFormat:@"%.1f分",_movieModal.average];
    
    _starView.average = _movieModal.average;
}

@end
