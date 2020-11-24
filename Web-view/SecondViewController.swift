//
//  ViewController.swift
//  Web-view
//
//  Created by Aleksey Antokhin on 23.11.2020.
//  Copyright © 2020 Aleksey Antokhin. All rights reserved.
//

import UIKit
import WebKit


class SecondViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var wkWebView: WKWebView!
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
     override func viewDidLoad() {
           super.viewDidLoad()
           
           let myURL = URL(string:"http://site.com")
           let myRequest = URLRequest(url: myURL!)
           webView.load(myRequest)
            
       // webView.isLoading
        
       }
    

}
