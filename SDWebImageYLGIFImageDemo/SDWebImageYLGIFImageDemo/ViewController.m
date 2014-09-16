//
//  ViewController.m
//  SDWebImageYLGIFImageDemo
//
//  Created by Yong Li on 5/14/14.
//  Copyright (c) 2014 Yong Li. All rights reserved.
//

#import "ViewController.h"
#import "YLImageView+WebCache.h"
#import <SDWebImageManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [SDWebImageManager setIsDecodeGIFImage:NO];
    
    YLImageView* imgView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 0.75*self.view.frame.size.width)];
    [self.view addSubview:imgView];
    [imgView sd_setImageWithURL:[NSURL URLWithString:@"http://assets.sbnation.com/assets/2512203/dogflops.gif"] placeholderImage:nil options:0
                       progress:^(NSInteger receivedSize, NSInteger expectedSize) {
                           NSLog(@"p = %f", (float)receivedSize/(float)expectedSize );
                       } completed:^(UIImage *image, NSData *data, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
                           if (error) {
                               NSLog(@"ERROR: %@", error);
                           } else {
                               
                           }
                       }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
