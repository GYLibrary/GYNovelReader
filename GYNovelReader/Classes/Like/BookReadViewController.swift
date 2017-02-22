//
//  BookReadViewController.swift
//  GYNovelReader
//
//  Created by ZGY on 2017/2/22.
//  Copyright © 2017年 GYJade. All rights reserved.
//
//  Author:        Airfight
//  My GitHub:     https://github.com/airfight
//  My Blog:       http://airfight.github.io/
//  My Jane book:  http://www.jianshu.com/users/17d6a01e3361
//  Current Time:  2017/2/22  16:43
//  GiantForJade:  Efforts to do my best
//  Real developers ship.

import UIKit

class BookReadViewController: UIViewController {
    
    //MARK: - Attributes

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Override
    
    
    //MARK: - Initial Methods
    
    
    //MARK: - Delegate
    
    
    //MARK: - Target Methods
    
    
    //MARK: - Notification Methods
    
    
    //MARK: - KVO Methods
    
    
    //MARK: - UITableViewDelegate, UITableViewDataSource
    
    
    //MARK: - Privater Methods
    
    fileprivate func createTxt() {
        
        let document = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0] as NSString
        let fileManger = FileManager.default
        
        let path = document.appendingPathComponent("test")
        
        try?  fileManger.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
        
        let str = "123456"
        
        try? str.write(toFile: path, atomically: true, encoding: String.Encoding.utf8)
        
        
        
    }
    
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
