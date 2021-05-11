//
//  ViewController.m
//  Hello
//
//  Created by siegelwang on 2021/5/11.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect rect = [UIScreen mainScreen].bounds;
    self.view = [[UIView alloc] initWithFrame:rect];
    self.view.backgroundColor = [UIColor whiteColor];
        
    UILabel *labelView = [[UILabel alloc] initWithFrame:CGRectMake(5,5,200,50)];
    labelView.text = @"Hello world test!";
    labelView.textColor = [UIColor blackColor];
    [self.view addSubview:labelView];
}


@end
