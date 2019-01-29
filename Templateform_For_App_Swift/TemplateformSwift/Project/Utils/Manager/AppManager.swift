//
//  AppManager.swift
//  TemplateformSwift
//
//  Created by MrYeL on 2019/1/29.
//  Copyright © 2019 MrYeL. All rights reserved.
//

import UIKit



class AppManager: NSObject {

    var firstLaunch:Bool = false;
    
    //单例
    static let sharedAppManager = AppManager()
    /** 用户信息*/
    var userInfoModel:AppUserInfoModel = AppUserInfoModel()
    
    
}
