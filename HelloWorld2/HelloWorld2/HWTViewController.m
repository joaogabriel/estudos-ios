//
//  HWTViewController.m
//  HelloWorld2
//
//  Created by João Gabriel Soares Esteves on 15/10/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

#import "HWTViewController.h"

@interface HWTViewController ()

@end

@implementation HWTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hideView:(id)sender {
    _workingView.alpha = 0;
}

- (IBAction)showView:(id)sender {
    _workingView.alpha = 1;
}
@end
