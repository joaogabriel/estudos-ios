//
//  ViewController.m
//  ControllerAnimations
//
//  Created by João Gabriel Soares Esteves on 03/11/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

#import "ViewController.h"
#import "OpcoesController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDissolve:(id)sender {
    [self mostraControllerComAnimacao:UIModalTransitionStyleCrossDissolve];
}

- (IBAction)showPageCurl:(id)sender {
    [self mostraControllerComAnimacao:UIModalTransitionStylePartialCurl];
}

- (IBAction)showVertical:(id)sender {
    [self mostraControllerComAnimacao:UIModalTransitionStyleCoverVertical];
}

- (IBAction)showHorizontal:(id)sender {
    [self mostraControllerComAnimacao:UIModalTransitionStyleFlipHorizontal];
}

- (void) mostraControllerComAnimacao:(UIModalTransitionStyle) estilo {
    OpcoesController *c = [[OpcoesController alloc] init];
    c.modalTransitionStyle = estilo;
    
    //    [self presentModalViewController:c animated:YES completion:nil];
    [self presentViewController:c animated:YES completion:nil];
}
@end
