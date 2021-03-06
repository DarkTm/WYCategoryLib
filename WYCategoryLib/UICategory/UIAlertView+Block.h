//
//  UIAlertView+Block.h
//  WYUICategory
//
//  Created by 3TI on 13-11-30.
//  Copyright (c) 2013年 qiaquan. All rights reserved.
//

#import <UIKit/UIKit.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

//NS_ASSUME_NONNULL_BEGIN
typedef void (^UIAlertViewBlock) (UIAlertView * alertView);
typedef void (^UIAlertViewCompletionBlock) (UIAlertView * alertView, NSInteger buttonIndex);

@interface UIAlertView (Block)<UIAlertViewDelegate>


+ (instancetype)showWithTitle:(NSString *)title
                              message:( NSString *)message
                                style:(UIAlertViewStyle)style
                    cancelButtonTitle:( NSString *)cancelButtonTitle
                    otherButtonTitles:( NSArray *)otherButtonTitles
                             tapBlock:(UIAlertViewCompletionBlock)tapBlock;

+ (instancetype)showWithTitle:(NSString *)title
                              message:(NSString *)message
                    cancelButtonTitle:( NSString *)cancelButtonTitle
                    otherButtonTitles:( NSArray *)otherButtonTitles
                             tapBlock:(UIAlertViewCompletionBlock)tapBlock;

@property (copy, nonatomic) UIAlertViewCompletionBlock tapBlock;
@property (copy, nonatomic) UIAlertViewCompletionBlock willDismissBlock;
@property (copy, nonatomic) UIAlertViewCompletionBlock didDismissBlock;

@property (copy, nonatomic) UIAlertViewBlock willPresentBlock;
@property (copy, nonatomic) UIAlertViewBlock didPresentBlock;
@property (copy, nonatomic) UIAlertViewBlock cancelBlock;

@property (copy, nonatomic) BOOL(^shouldEnableFirstOtherButtonBlock)(UIAlertView* alertView);
@end
//NS_ASSUME_NONNULL_END
#pragma clang diagnostic pop