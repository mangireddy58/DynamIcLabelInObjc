//
//  ViewController.m
//  DynamicLabel
//
//  Created by Rushikesh Kulkarni on 18/08/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"rewrewr ewrewrewr sadsaew ewrewr sdsadase werewrewrewrwer erewtrew tsdsaw tsadsaw tasdswtw twetwretwtw  fsfdft wtwetwetew ewrewr ewrewrewr ew ewrewr edfsd werewrewrewrwer erewtrew rewrewrt  tfgw tfgfw twtw tfgfwe tdsfdsfs   twretwtw  sdfdsft wtwetwetew sadsaew ewrewr sdsadase werewrewrewrwer erewtrew tsdsaw tsadsaw tasdswtw twetwretwtw  fsfdft wtwetwetew ewrewr ewrewrewr ew ewrewr edfsd werewrewrewrwer erewtrew rewrewrt  tfgw tfgfw twtw tfgfwe tdsfdsfs   twretwtw  sdfdsft";
    [self.dynamicLabel setText:[NSString stringWithFormat:@"%@",str]];
    CGSize maximumLabelSize = CGSizeMake(self.dynamicLabel.frame.size.width, FLT_MAX);
    CGRect textRect = [str boundingRectWithSize:maximumLabelSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: self.dynamicLabel.font} context:nil];
    self.dynamicLabel.numberOfLines = 0;
    //adjust the label the the new height.
    CGRect newFrame = self.dynamicLabel.frame;
    newFrame.size.height = textRect.size.height;
    self.dynamicLabel.frame = newFrame;
    [self.dynamicLabel sizeToFit];
//    self.dynamicLabel.layer.borderColor = (__bridge CGColorRef _Nullable)(UIColorFromRGB(YELLOW_DARK));
//    self.dynamicLabel.layer.borderWidth = 1.0f;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
