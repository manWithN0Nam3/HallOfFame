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
#import "CustomView.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource, CustomViewDelegate>
//hellllldskfdjsk;fkls
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property NSMutableArray* array;

@property CustomView *custom;

@property PictureCollectionViewCell *cell;
@property NSIndexPath *indexPath;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.custom = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] objectAtIndex:0];
    self.custom.delegate = self;

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


    self.cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"pictureCell" forIndexPath:indexPath];

    Picture *picture = [self.array objectAtIndex:indexPath.row];

    self.cell.photoImageView.image = picture.image;
    self.cell.backgroundColor = picture.backgroundColor;
    
    return self.cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"hsahdhsahads");

//    self.custom = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:self options:nil] objectAtIndex:0];
//    self.custom.delegate = self;
    [self.view addSubview:self.custom];
    self.indexPath = indexPath;

}

-(void)customView:(id)cell onButtonTapped:(UIButton *)button {



        NSLog(@"helllooooooo");
        Picture *picture =  self.array[self.indexPath.row];
    
            picture.backgroundColor = button.backgroundColor;
    
        [self.custom removeFromSuperview];
        [self.collectionView reloadData];
    
    

//
//    if ([button.titleLabel.text isEqualToString:@"red"]) {
//
//
//    }
//    else if ([button.titleLabel.text isEqualToString:@"blue"]){
//        self.cell.backgroundColor = [UIColor blueColor];
//
//    }else if ([button.titleLabel.text isEqualToString:@"green"]){
//
//        self.cell.backgroundColor = [UIColor greenColor];
//    }


}


@end
