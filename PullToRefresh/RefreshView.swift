//
//  RefresView.swift
//  PullToRefresh
//
//  Created by kaitouLee on 16/7/16.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class RefreshView: UIView,UIScrollViewDelegate {
    
    private unowned var scrollView:UIScrollView
    
    private var progress:CGFloat = 0.0
    
    init(frame: CGRect, scrollView:UIScrollView) {
        self.scrollView = scrollView
        super.init(frame:frame)
        backgroundColor = UIColor.greenColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func scrollViewDidZoom(scrollView: UIScrollView) {
        //1.先拿到刷新视图可见区的高度
        let refreshViewVisibleHeight = max(0, -scrollView.contentOffset.y - scrollView.contentInset.top)
        //2.计算当前滚动的进度
        
        
    }
}
