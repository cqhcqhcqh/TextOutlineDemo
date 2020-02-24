//
//  PTLable.h
//  TextOutline
//
//  Created by Chris on 2018/10/30.
//  Copyright © 2018 Chris. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PTLabel : UILabel
@property (strong,nonatomic) UIColor *strokeColor;
@property (assign,nonatomic) CGFloat strokeWidth;
@end

NS_ASSUME_NONNULL_END
