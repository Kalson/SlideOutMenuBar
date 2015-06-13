//
//  ViewController.m
//  SlideOutMenuBar
//
//  Created by KaL on 6/12/15.
//  Copyright (c) 2015 KaL. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor greenColor];
    
    // retrieve SWRevealViewController
    SWRevealViewController *revealVC = self.revealViewController;
    
    // create side Bar Button
    UIBarButtonItem *sideBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon"] style:UIBarButtonItemStyleDone target:revealVC action:@selector(revealToggle:)];
    self.navigationItem.leftBarButtonItem = sideBarButton;
    
    // make the view slide with touch gestures
    [self.view addGestureRecognizer:revealVC.panGestureRecognizer];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (self.title == nil)
        self.title = @"Matrix";
    else
        self.title = self.titleString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
