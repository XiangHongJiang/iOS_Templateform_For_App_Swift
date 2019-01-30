//
//  AppManager.swift
//  TemplateformSwift
//
//  Created by MrYeL on 2019/1/29.
//  Copyright © 2019 MrYeL. All rights reserved.
//

import UIKit

/** 启动用到的一些Key*/
struct LaunchInfoKey {
    static let firstLaunchKey = "firstLaunchKey"
    static let appVersionKey = "appVersionKey"
    static let userInfoKey = "userInfoKey"
}


class AppManager: NSObject {
    
    // MARK: - V
    //单例
    static let sharedAppManager = AppManager()
    //是否首次启动
    var firstLaunch:Bool = false
    /** 用户信息*/
    var userInfoModel:AppUserInfoModel = AppUserInfoModel()
    
    // MARK: - Method
    override init() {
        super.init();
        //首次启动
        self.firstLaunch = UserDefaults.standard.bool(forKey: LaunchInfoKey.firstLaunchKey);
        //用户信息
        self.userInfoModel = UserDefaults.standard.value(forKey: LaunchInfoKey.userInfoKey) as! AppUserInfoModel;
        
    }
    /** 重置并存储是否首次启动*/
    func setFirstLaunch(_ first:Bool) {
        self.firstLaunch = first;
        UserDefaults.standard.setValue(first, forKey: LaunchInfoKey.firstLaunchKey);
        
    }
    /** 保存用户信息*/
    func saveUserInfo(_ save:Bool) {

        if save{
            
        
            
        }else {
            
            
        }
        

    }

}
