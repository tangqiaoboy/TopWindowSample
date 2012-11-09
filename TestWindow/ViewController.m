//
//  ViewController.m
//  TestWindow
//
//  Created by TangQiao on 12-9-8.
//  Copyright (c) 2012年 TangQiao. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "TopWindow.h"

@interface ViewController ()

@end

@implementation ViewController {
    TopWindow * topWindow;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    topWindow = [[TopWindow alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)showButtonPressed:(id)sender {
    [topWindow show];
}

- (IBAction)next:(id)sender {
    SecondViewController * vc = [[SecondViewController alloc] init];
    vc.topWindow = topWindow;
    [self presentModalViewController:vc animated:YES];
}

@end
