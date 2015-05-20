//
//  CollectionViewCell.m
//  HallOfFame
//
//  Created by Alex Santorineos on 5/20/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "Picture.h"

@implementation Picture



-(instancetype)initWithPicture:(UIImage *)image andBackgroundColor:(UIColor *)color{

    self = [super init];

    if (self) {

        self.image = image;
        self.backgroundColor = color;




    }
    return self;

}



@end
