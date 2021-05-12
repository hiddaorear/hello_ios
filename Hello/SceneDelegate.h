//
//  SceneDelegate.h
//  Hello
//
//  Created by siegelwang on 2021/5/11.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UINavigationController *navController;

@end

