//
//  WebViewInAppVC.swift
//  FrameworkTest
//
//  Created by Vijay Waghmare on 28/09/22.
//

import UIKit
import WebKit

class WebViewInAppVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnAct(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let link = URL(string:"https://developer.apple.com/videos/play/wwdc2019/239/")!
        let request = URLRequest(url: link)
        webView.load(request)
    }

}
