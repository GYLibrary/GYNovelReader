//
//  LikeViewModel.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/17.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/17  17:18
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit
import GYNetWorking
import ObjectMapper

class LikeViewModel: BaseViewModel {
    
    func getLikeList(_ page: Int) {
        
        NetWorkTool.instance.requestForResultJsonrequest(method: GYNetWorkMethod.POST, pathKey: "LikeList", params: ["page":page]) { [weak self] (reslut)  in
            
            switch reslut! {
            case .sucess(let value):
               self?.setValueData(value)
            case .failure(let error):
                Print(error)
            }
            
        }
        
    }
    
    
    override func setValueData(_ value: Any) {
        
        let value1 = value as! [String : Any]
        
        let dataArr = value1["body"]
        
        let arr = Mapper<LikeModel>().mapArray(JSONArray: dataArr as! [[String: Any]])
        
        if (arr?.count)! > 0 {
            self.returnBlock!(arr!)
        }
        
        
    }

}
