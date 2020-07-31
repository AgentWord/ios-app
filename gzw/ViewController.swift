//
//  ViewController.swift
//  zthc
//
//  Created by mac on 2020/4/26.
//  Copyright © 2020 wginfo. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var theWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadUrl(url: "http://192.168.43.93:4800", web: theWebView)//测试
        
        
     
        
    }
    // 加载请求的方法
    func loadUrl(url:String,web:WKWebView){
        // 载入输入的请求
        let aUrl=NSURL(string:(url))
        let urlRequest=NSURLRequest(url:aUrl! as URL)
        web.load(urlRequest as URLRequest)
    }
    
    func viewForZooming(in scrollView:UIScrollView)->UIView?{
        return nil
    }


}

