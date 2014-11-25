//
//  HWTViewController.h
//  HelloWorld2
//
//  Created by João Gabriel Soares Esteves on 15/10/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWTViewController : UIViewController
- (IBAction)hideView:(id)sender;
- (IBAction)showView:(id)sender;
@property (retain, nonatomic) IBOutlet UIView *workingView;

@end
