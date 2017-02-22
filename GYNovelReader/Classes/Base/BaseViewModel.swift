//
//  BaseViewModel.swift
//  GYVideo
//
//  Created by ZGY on 2017/2/8.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/8  13:52
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit


typealias SuccessBlock = (Any) -> Void
typealias ErrorCodeBlock = (Any) -> Void
typealias FailureBlock = (Void) -> Void
typealias NetWorkBlock = (Bool) -> Void

class BaseViewModel: NSObject {

    var returnBlock:SuccessBlock?
    var errorBlock: ErrorCodeBlock?
    var failureblock: FailureBlock?
    
    override init() {
        super.init()
        
    }
    
    init(_ returnBlock: SuccessBlock?, errorBlock: ErrorCodeBlock?,failureblock: FailureBlock?) {
        super.init()
        
        self.returnBlock = returnBlock
        self.errorBlock = errorBlock
        self.failureblock = failureblock
        
    }
    
    
    /// 接收传回来的block
    ///
    /// - Parameters:
    ///   - returnBlock: returnBlock description
    ///   - errorBlock: errorBlock description
    ///   - failureBlock: failureBlock description
    func setBlock(_ returnBlock: SuccessBlock?, errorBlock: ErrorCodeBlock?,failureBlock: FailureBlock?) {
        self.returnBlock = returnBlock
        self.errorBlock = errorBlock
        self.failureblock = failureBlock
    }
    
    func setValueData(_ value:Any){
        
    }
    
}
