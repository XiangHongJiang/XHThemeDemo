//
//  FunctionExamViewController.m
//  XHThemeDemo
//
//  Created by mryel on 2022/3/18.
//

//建议使用pch声明
#import "XHThemeService.h"
#import "ThemeColorKey.h"

#import "FunctionExamViewController.h"

@interface FunctionExamViewController ()
/** <#desc#>*/
@property (nonatomic, strong) UIView *themeView;
/** <#desc#>*/
@property (nonatomic, strong) UILabel *themeLabel;
/** <#desc#>*/
@property (nonatomic, strong) UIButton *themeBtn;
/** <#desc#>*/
@property (nonatomic, strong) UIImageView *themeImageView;


@end

@implementation FunctionExamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadFunctionWithType:self.type];

}
#pragma mark - -------------- func -----------------
- (void)loadFunctionWithType:(FunctionExamType)type {
    
    switch (type) {
        case FunctionExamType_BackgroudColor:
            
            break;
            
        default:
            break;
    }
    
}
//背景色
- (void)FunctionExamType_BackgroudColor {
      
    /**
     设置背景色
     ①xxx.theme_backGroundColor = ThemeColor_Key;
     */
    self.themeView.theme_backGroundColor = ThemeColor_AppMainColor;
    self.themeLabel.theme_backGroundColor = ThemeColor_AppMainColor;
    self.themeBtn.theme_backGroundColor = ThemeColor_AppMainColor;
    self.themeImageView.theme_backGroundColor = ThemeColor_AppMainColor;

}

//图片
- (void)FunctionExamType_Image {
    
    /**
     设置图片
     ①xxx.theme_image = themeIconName;
     ②[xx setThem_image:themeIconName];
     */
    self.themeImageView.theme_image = @"skin_icon_0";
   
    [self.themeBtn setTheme_Image:@"skin_icon_0" forState:UIControlStateNormal];
    [self.themeBtn setTheme_Image:@"skin_icon_0" forState:UIControlStateSelected];

}
//文字颜色
- (void)FunctionExamType_TextColor {
    
    /**
     设置文字颜色
     ①xxx.theme_textColor = ThemeColor_Key;
     */
    self.themeLabel.theme_textColor = ThemeColor_Text_Color_Default_333333_0;
    
    
    
}
//边框
- (void)FunctionExamType_Border {
    /**
     设置边框颜色
     ①xxx.layer.theme_borderColor = ThemeColor_Key;
     */
    self.themeView.layer.theme_borderColor = ThemeColor_AppMainColor;
    
}

@end
