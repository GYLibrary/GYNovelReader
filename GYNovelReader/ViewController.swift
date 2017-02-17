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
        
        
        
        NetWorkTool.instance.requestForResultJsonrequest(method: GYNetWorkMethod.POST, pathKey: "LikeList", params: ["page":"1"]) { (reslut) in
            
            switch reslut! {
            case .sucess(let value):
                Print(value)
            case .failure(let error):
                Print(error)
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

