#import "TabBarTestController.h"

@implementation TabBarTestController

- (void)dealloc {
  [_tabBar1 release];
  [_tabBar2 release];
  [_tabBar3 release];
  [super dealloc];
}

- (void)loadView {
  self.view = [[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame] autorelease];
  self.view.backgroundColor = RGBCOLOR(240, 242, 245);
    
  _tabBar1 = [[TTTabBar alloc] initWithFrame:CGRectMake(0, -1, 320, 43)
    style:TTTabBarStyleButtons];
  _tabBar1.delegate = self;
  [self.view addSubview:_tabBar1];

  _tabBar1.tabItems = [NSArray arrayWithObjects:
    [[[TTTabItem alloc] initWithTitle:@"Item 1"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 2"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 3"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 4"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 5"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 6"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 7"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 8"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 9"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Item 10"] autorelease],
    nil];

  _tabBar2 = [[TTTabBar alloc] initWithFrame:CGRectMake(0, 42, 320, 41)
    style:TTTabBarStyleDark];
  _tabBar2.delegate = self;
  _tabBar2.contentMode = UIViewContentModeScaleToFill;
  [self.view addSubview:_tabBar2];

  _tabBar2.tabItems = [NSArray arrayWithObjects:
    [[[TTTabItem alloc] initWithTitle:@"Banana"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Cherry"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Orange"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Grape"] autorelease],
    nil];
  
  _tabBar2.selectedTabIndex = 2;
  
  TTTabItem* item = [_tabBar2.tabItems objectAtIndex:1];
  item.badgeNumber = 2;

  _tabBar3 = [[TTTabBar alloc] initWithFrame:CGRectMake(0, 100, 320, 41)
    style:TTTabBarStyleLight];
  _tabBar3.delegate = self;
  _tabBar3.contentMode = UIViewContentModeScaleToFill;
  [self.view addSubview:_tabBar3];

  _tabBar3.tabItems = [NSArray arrayWithObjects:
    [[[TTTabItem alloc] initWithTitle:@"Red"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Green"] autorelease],
    [[[TTTabItem alloc] initWithTitle:@"Blue"] autorelease],
    nil];
}

///////////////////////////////////////////////////////////////////////////////////////////////////

@end
