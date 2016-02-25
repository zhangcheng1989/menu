//
//  ViewController.m
//  Menu
//
//  Created by zhangcheng on 16/2/25.
//  Copyright © 2016年 zhangcheng. All rights reserved.
//

#import "ViewController.h"
#import "ZCMenu.h"
@interface ViewController ()<ZCMenuDelegate>
@property (weak, nonatomic) IBOutlet UIButton *menuBtn;

@property (weak, nonatomic) IBOutlet UISwitch *menuSwitch;
@end

@implementation ViewController{
    BOOL isMenuActive;
    ZCMenu *menu;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    isMenuActive = NO;
    [self setupMenu];
    
    

}

- (void)setupMenu{
    self.menuBtn.clipsToBounds = YES;
    self.menuBtn.layer.cornerRadius = self.menuBtn.frame.size.height / 2;
    
    if (menu == nil) {
        menu = [[ZCMenu alloc] init];
    }
    menu.menuButton = self.menuBtn;
    menu.menuSuperView = self.view;
    menu.disableBackground = YES;
    menu.numberOfMenuItem = 5;
    
    /* Optional
     Pass name of menu items
     **/
    menu.menuItemsNameArray = [NSArray arrayWithObjects:@"Home",@"Like",@"Search",@"User",@"Buy",nil];

    UIColor *homeBackgroundColor = [UIColor colorWithRed:(33/255.0) green:(180/255.0) blue:(227/255.0) alpha:1.0];
    UIColor *searchBackgroundColor = [UIColor colorWithRed:(139/255.0) green:(116/255.0) blue:(240/255.0) alpha:1.0];
    UIColor *favoritesBackgroundColor = [UIColor colorWithRed:(241/255.0) green:(118/255.0) blue:(121/255.0) alpha:1.0];
    UIColor *userBackgroundColor = [UIColor colorWithRed:(184/255.0) green:(204/255.0) blue:(207/255.0) alpha:1.0];
    UIColor *buyBackgroundColor = [UIColor colorWithRed:(169/255.0) green:(59/255.0) blue:(188/255.0) alpha:1.0];
    menu.menuBackgroundColorsArray = [NSArray arrayWithObjects:homeBackgroundColor,favoritesBackgroundColor,searchBackgroundColor,userBackgroundColor, buyBackgroundColor,nil];
    
   
    menu.menuImagesNameArray = [NSArray arrayWithObjects:@"home.png",@"favourite.png",@"search.png",@"user.png",@"buy.png",nil];
    
 
    menu.delegate = self;
}
- (IBAction)menuButtonPressed {
    if (isMenuActive) {
          [self.menuBtn setImage:[UIImage imageNamed:@"plus.png"] forState:UIControlStateNormal];
        if (self.menuSwitch.isOn) {
            [menu hideGridMenu];
        }else{
            [menu hideCircularMenu];
        }
        isMenuActive = NO;
    }else{
        [self.menuBtn setImage:[UIImage imageNamed:@"cross.png"] forState:UIControlStateNormal];
        if (self.menuSwitch.isOn) {
            [menu showGridMenu];
        }else{
            [menu showCircularMenu];
        }
        isMenuActive = YES;
    }
}

- (void)menuSelected:(NSString *)selectedMenuName atIndex:(NSInteger)index{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:[NSString stringWithFormat:@"%@ at index %ld is selected",selectedMenuName,(long)index] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alertView show];
    
    switch (index) {
        case 0:
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
