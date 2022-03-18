# XHThemeDemo
Theme：换肤框架，自动换肤，主题换肤，图片换肤，背景色换肤
简书地址：https://www.jianshu.com/p/31df41ec895d
使用方法：

1、将Lib文件夹下的 XHThemeTool文件夹拖入项目

2、配置Target的Other Linker Flags：-ObjC

3、引入头文件：XHThemeService.h

4、调用相应的方法

备注：皮肤（图片、颜色），需要自己配置，默认使用系统配置，可参考demo。

5、使用示例
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
