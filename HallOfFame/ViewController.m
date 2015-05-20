//
//  ViewController.m
//  HallOfFame
//
//  Created by Alex Santorineos on 5/20/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>
//hellllldskfdjsk;fkls

@property NSMutableArray* array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Picture *picture = [[Picture alloc]initWithPicture:[UIImage imageNamed:@"nicCage"] andBackgroundColor:[UIColor orangeColor]];

    Picture *picture1 = [[Picture alloc]initWithPicture:[UIImage imageNamed:@"charlie"] andBackgroundColor:[UIColor orangeColor]];

    Picture *picture2 = [[Picture alloc]initWithPicture:[UIImage imageNamed:@"actors"] andBackgroundColor:[UIColor redColor]];

    Picture *picture3 = [[Picture alloc]initWithPicture:[UIImage imageNamed:@"robert"] andBackgroundColor:[UIColor blueColor]];

    Picture *picture4 = [[Picture alloc]initWithPicture:[UIImage imageNamed:@"manWith"] andBackgroundColor:[UIColor yellowColor]];

    self.array = [[NSMutableArray alloc]initWithObjects:picture,picture1, picture2, picture3, picture4, nil];
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.array.count;

}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{


    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"pictureCell" forIndexPath:indexPath];

    Picture *picture = [self.array objectAtIndex:indexPath.row];

    cell.photoImageView.image = picture.image;
    cell.backgroundColor = picture.backgroundColor;
    
    return cell;
}
@end
