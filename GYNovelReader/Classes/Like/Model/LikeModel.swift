//
//  LikeModel.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/21.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/21  20:32
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit
import ObjectMapper

class LikeModel: Mappable {
    
    var bookId: String?
    var img_url: String?
    var v_book: String?
    var u_time: String?
    var v_u_chapter: String?
    
    required init?(map: Map) {
        
    }
    
     func mapping(map: Map) {
        
        bookId <- map["book"]
        img_url <- map["img_url"]
        v_book <- map["v_book"]
        u_time <- map["u_time"]
        v_u_chapter <- map["v_u_chapter"]
        
    }

}
