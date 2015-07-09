//
//  ViewController.swift
//  TableSwift
//
//  Created by MAEDAHAJIME on 2015/07/09.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 設定（列）
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 3
    }
    
    // 設定（行数）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // 設定（セル）
    func tableView(tableView: UITableView, cellForRowAtIndexPath
        indexPath: NSIndexPath) -> UITableViewCell {
            
            // Get a Cell
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
            
            // 設定（セル）
            cell.textLabel!.text = "BMW"
            cell.imageView!.image =  UIImage(named:"car01")
            
            //println(" \(dic)")
            
            return cell
    }
    
    //　（設定）ヘッダータイトル
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "BMW紹介"
    }
    
    //　（設定）フッタータイトル
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        return "BMW紹介終わり"
    }
}

