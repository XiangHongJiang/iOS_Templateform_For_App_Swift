//
//  AppDelegate.swift
//  TemplateformSwift
//
//  Created by MrYeL on 2019/1/28.
//  Copyright © 2019 MrYeL. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.configLaunch(application);

        return true
    }
    /** 启动配置*/
    func configLaunch(_ application:UIApplication) {
        
        //例如0.设置窗口
        self.configWindow();
        
        //例如1.配置三方
        
        
        //例如2.其他操作
    }
    /** 0.设置窗口*/
    func configWindow() {
        // 设置主窗口,并设置根控制器

        self.window = UIWindow.init(frame: UIScreen.main.bounds);
        self.window?.backgroundColor = UIColor.white;
        
        //第一次启动：引导操作
        let first = AppManager.sharedAppManager.firstLaunch;
        if first  {

            self.addGuideView();
            //第一次启动置为 NO！
            AppManager.sharedAppManager.setFirstLaunch(false);

        }else {//否则：正常启动
            self.launchWindow();
        }
        self.window?.makeKeyAndVisible();
    }
    
// MARK: - 启动
    func launchWindow() {
        
        if AppManager.sharedAppManager.userInfoModel.userId.isEmpty {//已登录
            
            self.setAdControlIsRootWithType(false);
            
        } else {//未登录，不出广告
            
            self.setLoginIsRoot();
        }
        
    }
    /** 添加启动引导*/
    func addGuideView() {
        
        let guideVC : IntroductionVC = IntroductionVC();
        self.window?.rootViewController = guideVC;
    }
    /** 加载广告*/
    func setAdControlIsRootWithType(_ type:Bool) {
        
        //是否完成
        let adVc : XHAdViewController = XHAdViewController();
        weak var weakSelf = self
        adVc.callBackBlock { (succeed) in
            
            if succeed {
                weakSelf?.setTabBarIsRoot();
            }
        }
        self.window?.rootViewController = adVc;
    }
    /** 登录*/
    func setLoginIsRoot() {
        
        weak var weakSelf = self
        let loginVc:LoginVC = LoginVC();
      
        loginVc.callBackBlock { (succeed) in
            
            weakSelf?.setTabBarIsRoot();
        }
        let navi = UINavigationController.init(rootViewController: loginVc);
        self.window?.rootViewController = navi;
    }
    /** 设置main为root*/
    func setTabBarIsRoot() {
        
        let mainVC = AppMainVC();
        self.window?.rootViewController = mainVC;
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

