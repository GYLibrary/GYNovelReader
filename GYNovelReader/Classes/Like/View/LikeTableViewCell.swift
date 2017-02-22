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
import SnapKit
import Kingfisher

class LikeTableViewCell: UITableViewCell {

    
    var bookImageView: UIImageView?
    var bookTitleLb: GYLabel?
    var updateTiemLb: GYLabel?
    var updateChapterLb: GYLabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        loadUI()
    }
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        loadUI()
    }
    
    func reloadUI(_ model: LikeModel) {
        
        bookImageView?.kf.setImage(with:URL(string: model.img_url!) , placeholder: nil, options: nil, progressBlock: { (a, b) in
            Print(a)
            Print(b)
        }, completionHandler: nil)
        bookTitleLb?.text = model.v_book
        updateTiemLb?.text = model.u_time
        updateChapterLb?.text = model.v_u_chapter
    }
    
    fileprivate func loadUI() {
        
        bookImageView = UIImageView()
        contentView.addSubview(bookImageView!)
        
        bookTitleLb = GYLabel()
        contentView.addSubview(bookTitleLb!)
        
        updateTiemLb = GYLabel()
        contentView.addSubview(updateTiemLb!)
        
        updateChapterLb = GYLabel()
        contentView.addSubview(updateChapterLb!)
        updateTiemLb?.font = UIFont.systemFont(ofSize: 12)
        updateChapterLb?.font = UIFont.systemFont(ofSize: 12)
        
        updateTiemLb?.textColor = UIColor.darkGray
        updateChapterLb?.textColor = UIColor.darkGray
        
        bookImageView?.snp.makeConstraints({ (make) in
            make.top.equalTo(self.contentView).offset(10)
            make.left.equalTo(self.contentView).offset(10)
            make.bottom.equalTo(self.contentView).offset(-10)
            make.width.equalTo((bookImageView?.snp.height)!).multipliedBy(0.7)
            
        })
     
        bookTitleLb?.snp.makeConstraints({ (make) in
            make.top.equalTo((bookImageView?.snp.top)!)
            make.left.equalTo((bookImageView?.snp.right)!).offset(10)
            make.height.equalTo(20)
            
        })
        
        updateTiemLb?.snp.makeConstraints({ (make) in
//            make.bottom.equalTo(self.contentView).offset(-2)
            make.centerY.equalTo((bookImageView?.snp.centerY)!)
            make.left.equalTo((bookTitleLb?.snp.left)!)
            make.height.equalTo(20)
            make.width.greaterThanOrEqualTo(40)
        })
        
        updateChapterLb?.snp.makeConstraints({ (make) in
            make.top.equalTo((updateTiemLb?.snp.top)!)
            make.left.equalTo((updateTiemLb?.snp.right)!).offset(10)
            make.height.equalTo((updateTiemLb?.snp.height)!)
            make.right.lessThanOrEqualTo(self.contentView).offset(-10)
        })
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
