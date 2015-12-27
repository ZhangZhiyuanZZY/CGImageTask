//
//  ViewController.m
//  CGImage
//
//  Created by 章芝源 on 15/12/27.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *img;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupCGImage];
}

- (void)setupCGImage
{
    UIImage *image = [UIImage imageNamed:@"DH4G9IJF}@UH5G38R@TP{9P"];
    CGImageRef temImg = image.CGImage;//拿到位图信息
    
    NSLog(@"%lu", CGImageGetTypeID());
    NSLog(@"%zu", CGImageGetWidth(temImg));
    NSLog(@"%zu", CGImageGetHeight(temImg));
    

    //截取位图
    temImg = CGImageCreateWithImageInRect(temImg, CGRectMake(0, 0, 100, 100));
    //得到新图片
    UIImage *imageNew = [UIImage imageWithCGImage:temImg];
    self.img.image = imageNew;
    
    
    //释放位图对象
    CGImageRelease(temImg);
    
}

@end
