//
//  ViewController.m
//  BSTableViewCellDemo
//
//  Created by scnfex on 12/20/13.
//  Copyright (c) 2013 Bobo Shone. All rights reserved.
//

#import "ViewController.h"
#import "BSTextfieldCell.h"
#import "BSSwitchCell.h"
#import "BSTableViewCellConst.h"
#import "BSSliderCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"Demo";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Selector

- (void)clickSwitch:(UISwitch *)sender {
    NSLog(@"clickSwitch --> %d", sender.on);
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    int row = [indexPath row];
    
    NSString *cellIdentifier = nil;
    if (row == 0) {
        cellIdentifier = kBSCellIdentifierTextfieldCell;
    }
    else if (row == 1) {
        cellIdentifier = kBSCellIdentifierSwitchCell;
    }
    else if (row == 2) {
        cellIdentifier = kBSCellIdentifierSliderCell;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        if (row == 0) {
            BSTextfieldCell *textfieldCell = [[BSTextfieldCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                                    reuseIdentifier:cellIdentifier];
            textfieldCell.textLabel.text = NSStringFromClass([BSTextfieldCell class]);
            cell = textfieldCell;
        }
        else if (row == 1) {
            BSSwitchCell *switchCell = [[BSSwitchCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                           reuseIdentifier:cellIdentifier];
            switchCell.textLabel.text = NSStringFromClass([BSSwitchCell class]);
            [switchCell.switchButton addTarget:self
                                        action:@selector(clickSwitch:)
                              forControlEvents:UIControlEventValueChanged];
            cell = switchCell;
        }
        else if (row == 2) {
            BSSliderCell *sliderCell = [[BSSliderCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                           reuseIdentifier:cellIdentifier];
            sliderCell.textLabel.text = NSStringFromClass([BSSliderCell class]);
            cell = sliderCell;
        }
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

@end
