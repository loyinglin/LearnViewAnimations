//
//  ViewController.m
//  ForCode
//
//  Created by 林伟池 on 16/1/11.
//  Copyright © 2016年 林伟池. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic , strong) IBOutlet UIView* myView1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)onSelect:(id)sender {
    if (!self.myView1.hidden) {
        [UIView transitionWithView:self.myView1 duration:1 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionTransitionCurlUp animations:^{
            self.myView1.hidden = YES;
        } completion:^(BOOL finished) {
            NSLog(@"%@", self.myView1);
        }];
    }
    else {
        [self.view addSubview:self.myView1];
        [UIView transitionWithView:self.myView1 duration:1 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionTransitionCurlDown animations:^{
            self.myView1.hidden = NO;
        } completion:^(BOOL finished) {
            NSLog(@"%@", self.myView1);
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
