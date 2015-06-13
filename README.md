# SlideOutMenuBar
A slide out sidebar menu done programtically using the library SWRevealViewController (https://github.com/John-Lluch/SWRevealViewController). Developed by John Lluch, this excellent library provides a quick and easy way to put up a slide-out navigation menu and it’s available for free.
# Adding to project
After you extract the file, you should find “SWRevealViewController.h” and “SWRevealViewController.m”. In the project navigator, right-click SidebarDemo folder and select “New Group”. Name the group “SWRevealViewController”. Import both files into the Xcode project and put them under “SWRevealViewController”.
# Starting coding programatically
Delete the view controller class, the view controller from storyboard and "main" from the main interface of deployment info.
Then set up the root View Controller/initial View Controller with the SWRevealViewController, which will be intialize with the main and rear View Controllers
