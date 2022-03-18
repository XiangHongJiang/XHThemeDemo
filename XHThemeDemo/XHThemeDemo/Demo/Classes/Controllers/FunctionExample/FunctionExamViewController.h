//
//  FunctionExamViewController.h
//  XHThemeDemo
//
//  Created by mryel on 2022/3/18.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,FunctionExamType){
    FunctionExamType_BackgroudColor,//背景色
    FunctionExamType_Image,//图片
    FunctionExamType_TextColor,//文字颜色
    FunctionExamType_Border,//边框
};


@interface FunctionExamViewController : UIViewController

/** 皮肤示例类型*/
@property (nonatomic, assign) FunctionExamType type;

@end


