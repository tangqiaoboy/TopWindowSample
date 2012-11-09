//
//  SecondViewController.m
//  TestWindow
//
//  Created by TangQiao on 12-11-9.
//  Copyright (c) 2012年 TangQiao. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)show:(id)sender {
    debugMethod();
    [_topWindow show];
}

- (IBAction)dismiss:(id)sender {
    debugMethod();
    [self dismissModalViewControllerAnimated:YES];
}

@end
