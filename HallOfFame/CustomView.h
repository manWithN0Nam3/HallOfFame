//
//  CustomView.h
//  HallOfFame
//
//  Created by Travis  on 5/20/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PictureCollectionViewCell.h"

@protocol CustomViewDelegate <NSObject>

-(void)customView:(id)cell onButtonTapped:(UIButton *)button;

@end

@interface CustomView : UIView

@property (nonatomic,assign) id <CustomViewDelegate> delegate;

@end
