//
//  BSSwitchCell.m
//  BSTableViewCellDemo
//
//  Created by scnfex on 12/20/13.
//  Copyright (c) 2013 Bobo Shone. All rights reserved.
//

#import "BSSwitchCell.h"

@implementation BSSwitchCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.switchButton= [[UISwitch alloc] init];
        self.switchButton.backgroundColor = [UIColor clearColor];
        self.accessoryView = self.switchButton;
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
