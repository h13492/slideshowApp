//
//  ViewController.h
//  slideshowApp
//
//  Created by Himanshu on 30/10/15.
//  Copyright (c) 2015 jq software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUIImageView.h"

@interface ViewController : UIViewController
@property (strong, nonatomic)  UIScrollView *scrview;
@property(strong,nonatomic) NSArray *images;
@property(strong,nonatomic) NSArray *imagechange;

@end

