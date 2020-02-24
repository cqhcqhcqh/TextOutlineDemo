//
//  ViewController.m
//  TextOutline
//
//  Created by Chris on 2018/10/30.
//  Copyright © 2018 Chris. All rights reserved.
//

#import "ViewController.h"
#import "PTLabel.h"
#import "UIFont+Versa.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (nonatomic, weak) PTLabel *label;
@end

@implementation ViewController

- (IBAction)fontChange:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
            self.label.font = [UIFont customFontWithName:@"ButterShiSan.ttf" size:50.0];
            break;
        case 2:
            self.label.font = [UIFont customFontWithName:@"ChekiangShuKeSungforUncleButter.otf" size:50.0];
            break;
        case 3:
            self.label.font = [UIFont customFontWithName:@"FZBYFKSK--GBK1-0.ttf" size:50.0];
            break;
        case 4:
            self.label.font = [UIFont customFontWithName:@"WenYue-XinQingNianTi-NC-W8.otf" size:50.0];
            break;
        case 5:
            self.label.font = [UIFont customFontWithName:@"WenYue-HouXianDaiTi-W2-75.otf" size:50.0];
            break;
        case 6:
            self.label.font = [UIFont customFontWithName:@"WenYue-QingLongTi-NC-W5.otf" size:50.0];
            break;
        case 7:
            self.label.font = [UIFont customFontWithName:@"FZLTTHJW.TTF" size:50.0];
            break;
        case 8:
            self.label.font = [UIFont customFontWithName:@"fzqkbys.TTF" size:50.0];
            break;
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];


    PTLabel *label = [PTLabel new];
    label.frame = CGRectMake(0, 300, self.view.bounds.size.width, 100);
    label.text = @"能不能";
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont customFontWithName:@"WenYue-QingLongTi-NC-W5.otf" size:50.0];
    //描边
    label.strokeColor = [UIColor blackColor];
    label.strokeWidth = 10;
    self.label = label;
    [self.view addSubview:label];
    
    self.inputTextField.returnKeyType = UIReturnKeyDone;
    self.inputTextField.delegate = self;
    [self.inputTextField addTarget:self.inputTextField action:@selector(resignFirstResponder) forControlEvents:UIControlEventEditingDidEndOnExit];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.label.text = textField.text;
}
@end
