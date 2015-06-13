//
//  MenuTVC.m
//  
//
//  Created by KaL on 6/13/15.
//
//

#import "MenuTVC.h"
#import "SWRevealViewController.h"
#import "ViewController.h"
#import "RedViewController.h"
#import "BlueViewController.h"

@interface MenuTVC ()

@end

@implementation MenuTVC
{
    NSArray *menuItems;
    NSArray *menuColors;
    
    ViewController *matrixVC;
    RedViewController *redPillVC;
    BlueViewController *bluePillVC;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    menuItems = @[@"Matrix",@"Red Pill",@"Blue Pill"];
    menuColors = @[[UIColor greenColor],[UIColor redColor],[UIColor blueColor]];

    matrixVC = [ViewController new];
    redPillVC = [RedViewController new];
    bluePillVC = [BlueViewController new];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

    cell.textLabel.text = menuItems[indexPath.row];
    cell.backgroundColor = menuColors[indexPath.row];
    
    cell.textLabel.textColor = [UIColor whiteColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // retrieve SWRevealViewController and set it to self
    SWRevealViewController *revealVC = self.revealViewController;
    
    // set a integer object to the indexpath
    NSInteger rowSelected = indexPath.row;
    
    // create a dynamic view controllers class for the view controllers selected
    UIViewController *selectedFrontVC;
    
    if (rowSelected == 0)
    {
        selectedFrontVC = matrixVC;
    }
    
    else if (rowSelected == 1)
    {
        selectedFrontVC = redPillVC;
    }
    
    else {
        selectedFrontVC = bluePillVC;
    }
    
    // created Nav C for the controllers selected
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:selectedFrontVC];
    
    // make the Reveal VC push the front view controllers
    [revealVC pushFrontViewController:navC animated:YES];
    

    
    
}


@end
