//
//  ViewController.m
//  AnimateButtonDemo
//
//  Created by indianmesh on 1/18/16.
//  Copyright © 2016 indianmesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet UIImageView *imf;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self animateButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)animateButton {
    self.playButton.transform = CGAffineTransformMakeScale(0.1, 0.1);
    
    [UIView animateWithDuration:2.0f delay:0 usingSpringWithDamping:0.2f initialSpringVelocity:6.0f options:UIViewAnimationOptionAllowUserInteraction animations:^{
        self.playButton.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
        [self animateButton];
    }];
    
    self.imf.transform = CGAffineTransformMakeScale(0.1, 0.1);
    
    [UIView animateWithDuration:2.0f delay:0 usingSpringWithDamping:0.2f initialSpringVelocity:6.0f options:UIViewAnimationOptionAllowUserInteraction animations:^{
        self.imf.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished){
        [self animateButton];
    }];
}



@end
