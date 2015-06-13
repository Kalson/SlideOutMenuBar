//
//  RedViewController.m
//  
//
//  Created by KaL on 6/13/15.
//
//

#import "RedViewController.h"
#import "SWRevealViewController.h"

@interface RedViewController ()

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor redColor];
    self.title = self.titleString;

    // Retreive SWRevealViewController and set it to self
    SWRevealViewController *revealVC = self.revealViewController;
    
    // create side Bar Button
    UIBarButtonItem *sideBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon"] style:UIBarButtonItemStyleDone target:revealVC action:@selector(revealToggle:)];
    self.navigationItem.leftBarButtonItem = sideBarButton;
    
    // make the view slide with touch gestures
    [self.view addGestureRecognizer:revealVC.panGestureRecognizer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
