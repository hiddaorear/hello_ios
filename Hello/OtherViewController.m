//
//  OtherViewController.m
//  Hello
//
//  Created by siegelwang on 2021/5/12.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGRect rect = [UIScreen mainScreen].bounds;
    self.view = [[UIView alloc] initWithFrame:rect];
    self.view.backgroundColor = [UIColor whiteColor];
        
    UILabel *labelView = [[UILabel alloc] initWithFrame:CGRectMake(50,50,200,50)];
    labelView.text = @"other ViewController";
    labelView.textColor = [UIColor blackColor];
    [self.view addSubview:labelView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
