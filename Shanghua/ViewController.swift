//
//  ViewController.swift
//  Shanghua
//
//  Created by jarvics soft on 29/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK :- SearchBtn
    
    
    @IBAction func searchBtn(sender: AnyObject)
    {
        
    }
    
    
    // MARK :- MenuBtn
    @IBAction func menuBtn(sender: AnyObject)
    {
        
    }

    // MARK :- loginView
    @IBAction func loginViewBtn(sender: AnyObject)
    {
        let loginVC = self.storyboard?.instantiateViewControllerWithIdentifier("LoginView") as! LoginView
        
        self.navigationController?.pushViewController(loginVC, animated: true)
        
        
    }

    // MARK :- SignUpView
    
    @IBAction func signUpBtn(sender: AnyObject)
    {
        let signUpVC = self.storyboard?.instantiateViewControllerWithIdentifier("SignUpVIew") as! SignUpVIew
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
         
    }
}

