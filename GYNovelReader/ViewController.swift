//
//  ViewController.swift
//  GYNovelReader
//
//  Created by zhuguangyang on 2017/2/17.
//  Copyright © 2017年 GYJade. All rights reserved.
//

import UIKit
import GYNetWorking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dic: [String:Any] = ["1":123]
        dic["2"] = 456
        
        dump(dic)
        
        LikeViewModel().getLikeList(1)
        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

