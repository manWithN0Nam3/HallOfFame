//
//  PictureCollectionViewCell.h
//  HallOfFame
//
//  Created by Alex Santorineos on 5/20/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CollectionViewCellDelegate <NSObject>

- (void)collectionViewCell:(id)cell onImageTapped:(UIImageView *)image;

@end

@interface PictureCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (nonatomic,assign) id <CollectionViewCellDelegate>delegate;


@end
