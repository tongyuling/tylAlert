//
//  TYLAlertView.h
//  Pods-TYLBill_Example
//
//  Created by tyl on 2018/11/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TYLAlertView : UIView

@property (nonatomic,copy) void(^btnBlock)(void);

-(instancetype)initWithTYLAlertViewFrame:(CGRect)frame title:(NSString *)title messageTitle:(NSString *)messageTitle btnTitle:(NSString *)btnTitle;

-(void)show;

-(void)hide;

@end

NS_ASSUME_NONNULL_END
