//
//  CustomView.m
//  HallOfFame
//
//  Created by Travis  on 5/20/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView


- (IBAction)onButton:(UIButton *)sender {
    NSLog(@"nsooooooof");
    [self.delegate customView:self onButtonTapped:sender];
}

@end
