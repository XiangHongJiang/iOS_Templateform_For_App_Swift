//
//  IntroductionVC.swift
//  TemplateformSwift
//
//  Created by MrYeL on 2019/1/29.
//  Copyright © 2019 MrYeL. All rights reserved.
//

import UIKit
//0
typealias didEnterBlock = ()->Void

class IntroductionVC: UIViewController {
    //1
    var didEnterBlock: didEnterBlock?
    //2
    func callBack(block: @escaping didEnterBlock) {
        
        didEnterBlock = block
    }
    
    private var imageArray : NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    init(_ coder:NSCoder?=nil) {
        
        if let coder = coder {
            super.init(coder: coder)!
        }else {
            super.init(nibName: nil, bundle: nil)
        }
    }
    required convenience init?(coder : NSCoder) {
        
        self.init(coder: coder)
    }
    
    init(_ titleArray:NSArray) {
        
        super.init(nibName: nil, bundle: nil)
    }
    
    func initWithGuideImages(_ imagesArray: NSArray) -> IntroductionVC{
        
        let vc:IntroductionVC = IntroductionVC();
        vc.imageArray = imagesArray;
        vc.configSubViews();
        return vc;
        
    }
    
    private func configSubViews() {
        
        
        let scrollerView:UIScrollView = UIScrollView.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        self.view.addSubview(scrollerView)
        
        
        
    }

   


}
