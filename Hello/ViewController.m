//
//  ViewController.m
//  Hello
//
//  Created by siegelwang on 2021/5/11.
//

#import "ViewController.h"
#import "OtherViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect rect = [UIScreen mainScreen].bounds;
    self.view = [[UIView alloc] initWithFrame:rect];
    self.view.backgroundColor = [UIColor whiteColor];
        
    UILabel *labelView = [[UILabel alloc] initWithFrame:CGRectMake(50,50,200,50)];
    labelView.text = @"ViewController";
    labelView.textColor = [UIColor blackColor];
    [self.view addSubview:labelView];
    
    // 自定义顶部中间标题
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"自定义" forState:UIControlStateNormal];
    [button sizeToFit];
    self.navigationItem.titleView = button;
    
    [self.navigationController setToolbarHidden:YES animated:YES];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"跳转" style:UIBarButtonItemStyleDone target:self action:@selector(gotoOtherView:)];
    self.toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height - self.toolBar.frame.size.height - 44.0, self.view.frame.size.width, 44.0)];
    self.toolBar.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [self.toolBar setItems:@[addButton]];
    [self.view addSubview:self.toolBar];
}

-(void)gotoOtherView:(id)sender {
    OtherViewController *vc = [OtherViewController new];
    [self.navigationController pushViewController:vc animated:YES];
    vc.title = @"other view";
}

@end
