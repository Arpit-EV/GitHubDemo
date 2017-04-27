//
//  FirstViewController.m
//  GitHubDemo
//
//  Created by Arpit Sharma on 27/04/17.
//  Copyright © 2017 Edutainment Ventures. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *btnBack=[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(btnClickedBack:)];
    self.navigationItem.leftBarButtonItem=btnBack;
    
    UILabel *lblTitle = [[UILabel alloc]init];
    [lblTitle setText:@"Arpit's First View Controller"];
    [lblTitle setNumberOfLines:0];
    [lblTitle setTextAlignment:NSTextAlignmentCenter];
    [lblTitle setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview: lblTitle];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeadingMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailingMargin multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:lblTitle attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
    
    
    [lblTitle layoutIfNeeded];
    
    
    
    UIButton *btnGoToNextVC = [[UIButton alloc]init];
    [btnGoToNextVC setTitle:@"Go To Next VC" forState:UIControlStateNormal];
    [btnGoToNextVC addTarget:self action:@selector(btnClickedGoToNextVC:) forControlEvents:UIControlEventTouchUpInside];
    [btnGoToNextVC setTranslatesAutoresizingMaskIntoConstraints:NO];
    [btnGoToNextVC setBackgroundColor:[UIColor blackColor]];
    [btnGoToNextVC.layer setCornerRadius:5];
    [self.view addSubview:btnGoToNextVC];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToNextVC attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:lblTitle attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:btnGoToNextVC attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    [btnGoToNextVC layoutIfNeeded];
    
}


-(void)btnClickedGoToNextVC:(UIButton *)sender
{
    dispatch_async(dispatch_get_main_queue(), ^{
        SecondViewController *objSecondViewController = [[SecondViewController alloc]init];
        [self.navigationController pushViewController:objSecondViewController animated:YES];
    });
    
}

-(void)btnClickedBack:(UIBarButtonItem *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
