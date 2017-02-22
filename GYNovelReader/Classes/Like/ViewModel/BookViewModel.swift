//
//  BookViewModel.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/22.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/22  16:25
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit
import GYNetWorking

class BookViewModel: BaseViewModel {
    
    func getBookContent() {
        
        NetWorkTool.instance.requestForResultJsonrequest(method: GYNetWorkMethod.POST, pathKey: "ReadNew", params: ["book" : "2579","chapter" : "76293"]) { (result) in
            
            switch result! {
            case .sucess(let value):
                Print(value)
            case .failure(let error):
                Print(error)
            }
            
            
        }
        
    }

}
