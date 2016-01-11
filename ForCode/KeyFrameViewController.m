//
//  KeyFrameViewController.m
//  ForCode
//
//  Created by 林伟池 on 16/1/11.
//  Copyright © 2016年 林伟池. All rights reserved.
//

#import "KeyFrameViewController.h"

@interface KeyFrameViewController ()
@property (nonatomic , strong) IBOutlet UIImageView* myImageView;
@end

@implementation KeyFrameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender {
    __weak typeof(self) weafSelf = self;
    [UIView animateKeyframesWithDuration:2 delay:0 options:UIViewKeyframeAnimationOptionBeginFromCurrentState animations:^{
        
        [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.2 animations:^{
            weafSelf.myImageView.transform = CGAffineTransformMakeRotation(45);
            weafSelf.myImageView.center = CGPointMake(200, 200);
        }];
        
        [UIView addKeyframeWithRelativeStartTime:0.1 relativeDuration:0.2 animations:^{
            weafSelf.myImageView.transform = CGAffineTransformIdentity;
            weafSelf.myImageView.center = CGPointMake(100, 150);
        }];
        
    } completion:nil];
}

@end
