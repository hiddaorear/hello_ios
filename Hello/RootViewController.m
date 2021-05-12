//
//  RootViewController.m
//  Hello
//
//  Created by siegelwang on 2021/5/12.
//

#import "RootViewController.h"
#import "ViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 添加labelView
    CGRect rect = [UIScreen mainScreen].bounds;
    self.view = [[UIView alloc] initWithFrame:rect];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *labelView = [[UILabel alloc] initWithFrame:CGRectMake(50,50,200,50)];
    labelView.text = @"RootViewController";
    labelView.textColor = [UIColor blackColor];
    [self.view addSubview:labelView];
    // 导航的左右按钮
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectRightAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    // 导航中间的按钮：segmentedController
    NSArray *array = @[@"view1", @"view2"];
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc] initWithItems:array];
    [segmentedController addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segmentedController;
    
    // toolbar
    [self.navigationController setToolbarHidden:NO animated:YES];
    UIBarButtonItem *itemOne = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(selectRightAction:)];
    UIBarButtonItem *itemTwo = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(selectRightAction:)];
    UIBarButtonItem *itemThree = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectRightAction:)];
    UIBarButtonItem *itemFour = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(selectRightAction:)];
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [self setToolbarItems:@[itemOne, flexItem, itemTwo, flexItem, itemThree, flexItem, itemFour]];

}

-(void)segmentAction:(id)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
            [self selectLeftAction:nil];
            break;
        case 1:
            [self selectRightAction:nil];
            break;
        default:
            break;
    }
}

-(void)selectLeftAction:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"你点击了导航左按钮" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:cancel];
    [alertController addAction:sure];
    [self presentViewController:alertController animated:YES completion:nil];

}

-(void)selectRightAction:(id)sender {
    ViewController *vc = [[ViewController alloc] init];
    vc.title = @"页面切换";
    [self.navigationController pushViewController:vc animated:YES];
    
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
