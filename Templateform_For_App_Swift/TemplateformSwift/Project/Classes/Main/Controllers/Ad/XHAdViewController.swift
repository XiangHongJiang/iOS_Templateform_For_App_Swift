//
//  XHAdViewController.swift
//  TemplateformSwift
//
//  Created by MrYeL on 2019/1/29.
//  Copyright © 2019 MrYeL. All rights reserved.
//

import UIKit
//0
typealias adCompletedBlock = (_ isSucceed:Bool)->Void

class XHAdViewController: UIViewController {

    //1
    var adCompletedBlock : adCompletedBlock?
    
    //2
    func callBackBlock(block:@escaping adCompletedBlock) {
        
        adCompletedBlock = block
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
