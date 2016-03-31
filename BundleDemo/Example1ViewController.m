
//
//  Example1ViewController.m
//  BundleDemo
//
//  Created by 晓童 韩 on 16/3/31.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "Example1ViewController.h"

@interface Example1ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UIImageView *questionView;

@end

@implementation Example1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //使用Create Groups
    NSString *filePath0 = [[NSBundle mainBundle] pathForResource:@"left" ofType:@"png" inDirectory:@"images"];
    NSLog(@"%@", filePath0);
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"left" ofType:@"png"];
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:filePath]];
    self.image.image = [UIImage imageWithData:imageData];
    
    NSString *filePath2 = [[NSBundle mainBundle] pathForResource:@"memory" ofType:@"png"];
    NSData *imageData2 = [NSData dataWithContentsOfURL:[NSURL fileURLWithPath:filePath2]];
    self.questionView.image = [UIImage imageWithData:imageData2];
}

@end
