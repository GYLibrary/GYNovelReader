//
//  LikeViewController.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/17.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/17  16:37
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit

class LikeViewController: BaseViewController ,UITableViewDelegate,UITableViewDataSource{
    
    //MARK: - Attributes
    var tableView: UITableView?
    
    var viewModle: LikeViewModel?
    
    var dataArr: [LikeModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView?.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        instanceUI()
        
        getDatas()
    }
    
    //MARK: - Override
    
    
    //MARK: - Initial Methods
    
    fileprivate func instanceUI() {
        
        hideLeftBtn()
        
        tableView = UITableView()
        tableView?.frame = self.view.bounds
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        
        tableView?.register(LikeTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(LikeTableViewCell.self))
        
    }
    
    fileprivate func getDatas() {
        
        weak var weakSelf = self
        viewModle = LikeViewModel({ (success) in
            Print(success)
            weakSelf?.dataArr.append(contentsOf: (success as AnyObject) as! [LikeModel])
        }, errorBlock: { (error) in
            Print(error)
        }, failureblock: { (_) in
            
        })
        
        viewModle?.getLikeList(1)
    }
    
    //MARK: - Delegate
    
    
    //MARK: - Target Methods
    
    
    //MARK: - Notification Methods
    
    
    //MARK: - KVO Methods
    
    
    //MARK: - UITableViewDelegate, UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(LikeTableViewCell.self)) as! LikeTableViewCell
        
//        cell.backgroundColor = UIColor.red
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    //MARK: - Privater Methods
    
    
    
    //MARK: - Setter Getter Methods
    
    
    //MARK: - Life cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    deinit {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
