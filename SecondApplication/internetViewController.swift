//
//  internetViewController.swift
//  SecondApplication
//
//  Created by Fray Pineda on 11/13/18.
//  Copyright © 2018 Fray Pineda. All rights reserved.
//

import UIKit

class internetViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        // el target self es que se aplica a este viewController
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(rightSwipe)
        
        let url = NSURL(string: "https://www.apple.com/es/")
        let requestObj = URLRequest(url: url! as URL)
       
        webView.loadRequest(requestObj)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backPressed(sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
