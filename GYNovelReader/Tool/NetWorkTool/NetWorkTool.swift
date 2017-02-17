//
//  NetWorkTool.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/17.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/17  14:04
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit
import GYNetWorking

class NetWorkTool: NSObject {
    
    init(NetWorkParmas: NSDictionary) {
        self.NetWorkParmas = NetWorkParmas
        super.init()
    }
    
    
    /// 获取单利
    static let instance = NetWorkTool(NetWorkParmas: NSDictionary(contentsOfFile: Bundle.main.path(forResource: "NetWorkTool", ofType: "plist")!)!)
    
    /// 网络链接
    fileprivate let NetWorkParmas: NSDictionary
    
    /// 接口前缀
    fileprivate var webRoot: String {
        return NetWorkParmas["WebRoot"] as! String
    }
    
    /// 接口后缀
    fileprivate var path:[String : String] {
        return NetWorkParmas["Path"] as! [String:String]
    }
    
}

extension NetWorkTool {
    

    /// 通用方法 (返回JSON -> GYResult)
    ///
    /// - Parameters:
    ///   - method: method description
    ///   - pathKey: pathKey description
    ///   - params: params description
    ///   - resultBack: resultBack description
    func requestForResultJsonrequest(method: GYNetWorkMethod, pathKey: String!, params: [String : Any]?, resultBack: @escaping SuccessAndFailureResult) {
        
        let url = webRoot + path[pathKey]!
        
        return requestForJSONResult(method, url: url, params: params, resultBack: resultBack)
  
    }
    
    
}
