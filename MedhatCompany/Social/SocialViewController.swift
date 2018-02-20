//
//  SocialViewController.swift
//  MedhatCompany
//
//  Created by medhat on 2/20/18.
//  Copyright © 2018 Medhatm3bd. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    var sentData: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = sentData
        
        if navigationItem.title == "GitHub" {
            
            let url = NSURL(string: "https://github.com/medhatmebed")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "Twitter" {
            
            let url = NSURL(string: "http://www.twitter.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "Google+" {
            
            let url = NSURL(string: "https://plus.google.com/u/1/113977106436491898480")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "LinkedIn" {
            
            let url = NSURL(string: "https://www.linkedin.com/in/medhat-mebed-%EF%A3%BF-b2691b51/")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "YouTube" {
            
            let url = NSURL(string: "http://www.youtube.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        if navigationItem.title == "Website" {
            
            let url = NSURL(string: "http://www.google.com")
            let request = URLRequest(url: url! as URL)
            webview.loadRequest(request)
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        actInd.startAnimating()
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        actInd.stopAnimating()
        
    }
    

}
