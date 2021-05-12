//
//  SceneDelegate.m
//  Hello
//
//  Created by siegelwang on 2021/5/11.
//

#import "SceneDelegate.h"
#import "ViewController.h"
#import "RootViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];
    RootViewController *rootView = [[RootViewController alloc] init];
    rootView.title = @"Root View";
    
    
    
    self.navController = [[UINavigationController alloc] init];
    [self.navController pushViewController:rootView animated:YES];
    [self.window addSubview:self.navController.view];
    
//    UIViewController *vc1 = [[UIViewController alloc] init];
//    vc1.view.backgroundColor = [UIColor blueColor];
//    UIViewController *vc2 = [[UIViewController alloc] init];
//    vc2.view.backgroundColor = [UIColor redColor];
//    UIViewController *vc3 = [[UIViewController alloc] init];
//    vc3.view.backgroundColor = [UIColor greenColor];
////    ViewController *VC = [[ViewController alloc]init];
//
//
//    [nav setToolbarHidden:NO animated:YES];
//    UIBarButtonItem *itemOne = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
//    UIBarButtonItem *itemTwo = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:nil action:nil];
//    UIBarButtonItem *itemThree = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
//    UIBarButtonItem *itemFour = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:nil action:nil];
//    UIBarButtonItem *fixedSpaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
//    nav.toolbarItems = @[itemOne, fixedSpaceItem, itemTwo, fixedSpaceItem, itemThree, fixedSpaceItem, itemFour];
//    [nav setViewControllers:@[vc1, vc2, vc3] animated:YES];
    
    [self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
