//
//  AnimationsViewController.m
//  ForCode
//
//  Created by 林伟池 on 16/1/11.
//  Copyright © 2016年 林伟池. All rights reserved.
//

#import "AnimationsViewController.h"

@interface AnimationsViewController ()
@property (nonatomic , strong) IBOutlet UIImageView* myImageView;
@end

@implementation AnimationsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender {
    [UIView beginAnimations:@"test " context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationWillStartSelector:@selector(onStart)];
    [UIView setAnimationDelegate:self];
//    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.myImageView cache:YES];
    self.myImageView.center = CGPointMake(self.myImageView.center.x + 20, self.myImageView.center.y + 20);
    
    [UIView commitAnimations];
    
}


- (void)onStart {
    NSLog(@"start");
}


@end
