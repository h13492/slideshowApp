//
//  ViewController.m
//  slideshowApp
//
//  Created by Himanshu on 30/10/15.
//  Copyright (c) 2015 jq software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
         self.scrview=[[UIScrollView alloc] initWithFrame:self.view.frame];
    self.view.userInteractionEnabled = YES;
    self.scrview.userInteractionEnabled = YES;
    self.scrview.canCancelContentTouches = YES;
    self.scrview.pagingEnabled=YES;
    
    self.images=[[NSArray alloc] initWithObjects:
                  [UIImage imageNamed:@"a02p01.jpg"],
                  [UIImage imageNamed:@"a02p02.jpg"],
                  [UIImage imageNamed:@"a04p01.jpg"],
                  [UIImage imageNamed:@"a05p01.jpg"],
                  [UIImage imageNamed:@"a06p01.jpg"],
                 
                 nil];
    self.imagechange=[[NSArray alloc] initWithObjects:
                [UIImage imageNamed:@"a02p02.jpg"],
                 [UIImage imageNamed:@"a03p02.jpg"],
                 [UIImage imageNamed:@"a04p02.jpg"],
                 [UIImage imageNamed:@"a05p02.jpg"],
                 [UIImage imageNamed:@"a06p02.jpg"],
                 
                 nil];

    self.scrview.contentSize=CGSizeMake(self.view.frame.size.width*5, self.view.frame.size.height);
    //[self.scrview setBackgroundColor:[UIColor grayColor]];
    for (int i=0; i<self.images.count; i++) {
        CGRect frame=CGRectMake(self.view.frame.size.width*i, 0, self.view.frame.size.width, self.view.frame.size.height);
        HUIImageView *img=[[HUIImageView alloc] initWithFrame:frame mainImage:[self.images objectAtIndex:i] andAlternativeImage:[self.imagechange objectAtIndex:i]];
        img.tag = i;
        img.userInteractionEnabled = YES;
        //img.backgroundColor = [UIColor redColor];
        [self.scrview addSubview:img];

        
    }
    [self.view addSubview:self.scrview];
    }


@end
