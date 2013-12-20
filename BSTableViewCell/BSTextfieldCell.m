//
//  BSTextfieldCell.m
//  BSTableViewCellDemo
//
//  Created by scnfex on 12/20/13.
//  Copyright (c) 2013 Bobo Shone. All rights reserved.
//

#import "BSTextfieldCell.h"
#import "BSTableViewCellConst.h"

@implementation BSTextfieldCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.textLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleRightMargin;
        
        self.textfield = [[UITextField alloc] initWithFrame:self.contentView.bounds];
        self.textfield.borderStyle = UITextBorderStyleNone;
        self.textfield.adjustsFontSizeToFitWidth = YES;
        self.textfield.backgroundColor = [UIColor clearColor];
        self.textfield.font = [UIFont systemFontOfSize:17.0f];
		self.textfield.minimumFontSize = 12.0f;
        self.textfield.textColor = [UIColor colorWithRed:0.275f green:0.376f blue:0.522f alpha:1.000f];
        [self.contentView addSubview:self.textfield];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect labelFrame = self.textLabel.frame;
    labelFrame.size = [self.textLabel sizeThatFits:CGSizeZero];
    
    CGRect textFieldFrame = self.textfield.frame;
    textFieldFrame.size.height = self.contentView.frame.size.height;
    textFieldFrame.origin.x = labelFrame.origin.x + labelFrame.size.width + kBSPadding;
    textFieldFrame.origin.y = 0;
    textFieldFrame.size.width = self.contentView.frame.size.width-textFieldFrame.origin.x - kBSPadding;
    [self.textfield setFrame:textFieldFrame];
}

@end
