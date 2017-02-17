//
//  LikeTableViewCell.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/17.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/17  17:51
//  GiantForJade:  Efforts to do my best
//  Real developers ship.


import UIKit

class LikeTableViewCell: UITableViewCell {

    
    var bookImageView: UIImageView?
    var bookTitleLb: GYLabel?
    var updateTiemLb: GYLabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
