//
//  MyViewController.m
//  BaseProject
//
//  Created by Apple on 16/1/8.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)UIView *view1;
@property(nonatomic,strong)UILabel *label1;
@property(nonatomic,strong)UILabel *label2;
@property(nonatomic,strong)UILabel *label3;

@end

@implementation MyViewController
- (UILabel *)label3
{
    if (!_label3) {
        _label3 = [[UILabel alloc]init];
        _label3.backgroundColor = [UIColor blackColor];
        _label3.text = @"  留言心得 ： 本人是iOS小白,有很多地方不足,希望可以多多交流,有什么意见和建议可以及时联系我,联系方式如上.谢谢大家的支持！";
        _label3.numberOfLines = 0;
        _label3.font = [UIFont systemFontOfSize:20];
        _label3.textColor = [UIColor lightGrayColor];
    }return _label3;
}
- (UILabel *)label2
{
    if (!_label2) {
        _label2 = [[UILabel alloc]init];
        _label2.backgroundColor = [UIColor blackColor];
        _label2.text = @"  邮箱编码 ： 631063941@qq.com";
        _label2.font = [UIFont systemFontOfSize:18];
        _label2.textColor = [UIColor redColor];

    }return _label2;
}
- (UIView *)view1
{
    if (!_view1) {
        _view1 = [[UIView alloc]init];
        _view1.backgroundColor = [UIColor lightGrayColor];
    }return _view1;
}
- (UILabel *)label1
{
    if (!_label1) {
        _label1 = [[UILabel alloc]init];
         _label1.backgroundColor = [UIColor blackColor];
        _label1.text = @"  联系方式 ： 18634643994";
        _label1.font = [UIFont systemFontOfSize:18];
        _label1.textColor = [UIColor redColor];
    }return _label1;
}
- (UILabel *)label
{
    if (!_label) {
        _label = [[UILabel alloc]init];
        _label.backgroundColor = [UIColor blackColor];
        _label.text = @"  开发人员 ： 小刚";
        _label.font = [UIFont systemFontOfSize:18];
        _label.textColor = [UIColor redColor];
    }return _label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [Factory addBackItemToVC:self];
    self.title = @"关于我们";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view  addSubview:self.view1];
    [self.view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottomMargin.mas_equalTo(-20);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
        make.topMargin.mas_equalTo(20);
    }];
    [self.view1 addSubview:self.label];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(20);
        make.height.mas_equalTo(40);
    }];
    [self.view1 addSubview:self.label1];
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.topMargin.mas_equalTo(self.label.mas_bottomMargin).mas_equalTo(40);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(40);
        
       
    }];
    [self.view1 addSubview:self.label2];
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.topMargin.mas_equalTo(self.label1.mas_bottomMargin).mas_equalTo(40);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(40);
    }];
    [self.view1 addSubview:self.label3];
    [self.label3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.topMargin.mas_equalTo(self.label2.mas_bottomMargin).mas_equalTo(40);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        
    }];

  
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
