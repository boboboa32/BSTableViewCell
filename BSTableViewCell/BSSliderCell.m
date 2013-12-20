//
//  BSSliderCell.m
//  BSTableViewCellDemo
//
//  Created by scnfex on 12/20/13.
//  Copyright (c) 2013 Bobo Shone. All rights reserved.
//

#import "BSSliderCell.h"
#import "BSTableViewCellConst.h"

@implementation BSSliderCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.slider = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 0, 23)];
        self.slider.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin |
        UIViewAutoresizingFlexibleWidth;
        [self.contentView addSubview:self.slider];
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
 
    CGRect labelFrame = self.textLabel.frame;
    labelFrame.size = [self.textLabel sizeThatFits:CGSizeZero];
    
    CGRect sliderFrame = self.slider.frame;
    sliderFrame.size.height = self.contentView.frame.size.height;
    sliderFrame.origin.x = labelFrame.origin.x + labelFrame.size.width + kBSPadding;
    sliderFrame.origin.y = 0;
    sliderFrame.size.width = self.contentView.frame.size.width-sliderFrame.origin.x - kBSPadding;
    [self.slider setFrame:sliderFrame];
}

@end
