//
//  TYLAlertView.m
//  Pods-TYLBill_Example
//
//  Created by tyl on 2018/11/21.
//

#import "TYLAlertView.h"

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

@implementation TYLAlertView

-(instancetype)initWithTYLAlertViewFrame:(CGRect)frame title:(NSString *)title messageTitle:(NSString *)messageTitle btnTitle:(NSString *)btnTitle
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
        [self configUIwithTitle:title messageTitle:messageTitle btnTitle:btnTitle];
    }
    return self;
}

-(void)configUIwithTitle:(NSString *)title messageTitle:(NSString *)messageTitle btnTitle:(NSString *)btnTitle
{
    UIView * backView = [[UIView alloc]init];
    backView.center = CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT/2);
    backView.bounds = CGRectMake(0, 0, 300, 220);
    backView.backgroundColor = [UIColor whiteColor];
    backView.layer.cornerRadius = 10;
    [self addSubview:backView];
    
    UILabel * label1 = [[UILabel alloc]init];
    label1.frame = CGRectMake(0, 0, backView.frame.size.width, 55);
    label1.textAlignment = NSTextAlignmentCenter;
    label1.text = title;
    [backView addSubview:label1];
    
    UIView * v1 = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(label1.frame), backView.frame.size.width, 1)];
    v1.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [backView addSubview:v1];
    
    UILabel * label2 = [[UILabel alloc]init];
    label2.frame = CGRectMake(0, CGRectGetMaxY(v1.frame), backView.frame.size.width, 100);
    label2.textAlignment = NSTextAlignmentCenter;
    label2.text = messageTitle;
    [backView addSubview:label2];
    
    UIView * v = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(label2.frame), backView.frame.size.width, 1)];
    v.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [backView addSubview:v];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, CGRectGetMaxY(v.frame), backView.frame.size.width, 60);
    [btn setTitle:btnTitle forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [backView addSubview:btn];
}

-(void)show
{
    [[UIApplication sharedApplication].windows.firstObject addSubview:self];
}

-(void)hide
{
    [self removeFromSuperview];
}

-(void)btn
{
    if (self.btnBlock) {
        self.btnBlock();
    }
}

@end
