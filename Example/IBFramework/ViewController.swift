//
//  ViewController.swift
//  FrameworkTest
//
//  Created by Vijay Waghmare on 27/09/22.
//

import UIKit
import IBFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sdkWithAPIBtnAct(_ sender: UIButton){
        let vc = sdkWithAPIViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func sdkWithAPIAndWebViewBtnAct(_ sender: UIButton){
        let vc = sdkWithAPIAndWebViewViewController()
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func webviewInAppBtnAct(_ sender: UIButton){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebViewInAppVC") as? WebViewInAppVC{
            self.present(vc, animated: false, completion: nil)
        }
    }
    
    func sdkWithAPIViewController() -> UIViewController {
        let frameworkBundle = Bundle(for: SDKWithAPIVC.self)
        let storyboard = UIStoryboard(name: "FrameworkMain", bundle: frameworkBundle)
        let YourController = storyboard.instantiateViewController(withIdentifier: "SDKWithAPIVC")
        return YourController
    }
    
    func sdkWithAPIAndWebViewViewController() -> UIViewController {
        let frameworkBundle = Bundle(for: SDKWithAPIAndWebViewVC.self)
        let storyboard = UIStoryboard(name: "FrameworkMain", bundle: frameworkBundle)
        let YourController = storyboard.instantiateViewController(withIdentifier: "SDKWithAPIAndWebViewVC")
        return YourController
    }
    
}

