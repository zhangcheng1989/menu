//
//  ZCMenu.h
//  Menu
//
//  Created by zhangcheng on 16/2/25.
//  Copyright © 2016年 zhangcheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZCMenu;

@protocol ZCMenuDelegate <NSObject>

- (void)menuSelected:(NSString *)selectedMenuName atIndex:(NSInteger)index;


@end

@interface ZCMenu : NSObject


@property (nonatomic,assign) NSInteger numberOfMenuItem;
@property (nonatomic,assign) CGFloat menuRadius;
@property (weak,nonatomic) UIButton *menuButton;
@property (weak,nonatomic) UIView *menuSuperView;
@property (strong,nonatomic) NSArray *menuItemsNameArray;
@property (strong,nonatomic) NSArray *menuBackgroundColorsArray;
@property (strong,nonatomic) NSArray *menuImagesNameArray;
@property (nonatomic) BOOL disableBackground;
@property int maxColumn;
@property int menuHeight;
@property (weak,nonatomic)id<ZCMenuDelegate> delegate;

- (void)showCircularMenu;
- (void)hideCircularMenu;
- (void)showGridMenu;
- (void)hideGridMenu;

@end
