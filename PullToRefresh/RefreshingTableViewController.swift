//
//  RefreshingTableViewController.swift
//  PullToRefresh
//
//  Created by kaitouLee on 16/7/16.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit
//设置一个高度用户不管怎么向下拉都不会超过这个
private let kRefreshViewHeight:CGFloat = 200

class RefreshingTableViewController: UITableViewController {
    
    private var refreshView:RefreshView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        refreshView = RefreshView(frame:CGRect(x:0,y: -kRefreshViewHeight, width:CGRectGetWidth(view.bounds) ,height:kRefreshViewHeight),scrollView:tableView)
        view.insertSubview(refreshView, atIndex: 0)
        
        
        func scrollViewDidScroll(scrollView:UIScrollView){
            //在这里我们要把这个通知传递给refresh view
        }
        
        
        
    } 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "第\(indexPath.row)行"
        return cell
    }
 

}
