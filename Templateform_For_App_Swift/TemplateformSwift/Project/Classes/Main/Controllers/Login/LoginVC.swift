//
//  LoginVC.swift
//  TemplateformSwift
//
//  Created by MrYeL on 2019/1/29.
//  Copyright © 2019 MrYeL. All rights reserved.
//

import UIKit
//0
typealias loginSucceedBlock = (_ isSucceed:Bool)->Void

class LoginVC: UIViewController {

    //1
    var loginSucceedBlock : loginSucceedBlock?
    
    //2
    func callBackBlock(block:@escaping loginSucceedBlock) {
        
        loginSucceedBlock = block
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
