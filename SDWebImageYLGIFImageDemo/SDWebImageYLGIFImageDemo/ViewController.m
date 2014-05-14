//
//  ViewController.m
//  SDWebImageYLGIFImageDemo
//
//  Created by Yong Li on 5/14/14.
//  Copyright (c) 2014 Yong Li. All rights reserved.
//

#import "ViewController.h"
#import "YLImageView+WebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    YLImageView* imgView = [[YLImageView alloc] initWithFrame:CGRectMake(0, 100, 320, 240)];
    [self.view addSubview:imgView];
    [imgView setImageWithURL:[NSURL URLWithString:@"http://assets.sbnation.com/assets/2512203/dogflops.gif"] placeholderImage:nil options:0
                    progress:^(NSInteger receivedSize, NSInteger expectedSize) {
                        NSLog(@"p = %f", (float)receivedSize/(float)expectedSize );
                    } completed:^(UIImage *image, NSData *data, NSError *error, SDImageCacheType cacheType) {
                        
                    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
