//
//  CollectionViewCell.h
//  HallOfFame
//
//  Created by Alex Santorineos on 5/20/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Picture : UICollectionViewCell

@property UIImage *image;
@property UIColor *frameColor;


-(instancetype)initWithPicture:(UIImage *)image andBackgroundColor:(UIColor *)color;

@end
