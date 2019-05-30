//
//  SuperView.h
//  ManualLayout
//
//  Created by Civet on 2019/5/22.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperView : UIView

@property(nonatomic,strong) UIView *view1;
@property(nonatomic,strong) UIView *view2;
@property(nonatomic,strong) UIView *view3;
@property(nonatomic,strong) UIView *view4;
@property(nonatomic,strong) UIView *view5;

- (void)createSubViews;
@end
