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

    override func viewDidLoad() {
        super.viewDidLoad()

        instanceUI()
    }
    
    //MARK: - Override
    
    
    //MARK: - Initial Methods
    
    fileprivate func instanceUI() {
        
        tableView = UITableView()
        tableView?.frame = self.view.bounds
        tableView?.delegate = self
        tableView?.dataSource = self
        view.addSubview(tableView!)
        
        tableView?.register(LikeTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(LikeTableViewCell.self))
        
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(LikeTableViewCell.self)) as! LikeTableViewCell
        
//        cell.backgroundColor = UIColor.red
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
