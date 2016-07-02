//
//  LoginView.swift
//  Shanghua
//
//  Created by jarvics soft on 29/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class LoginView: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextFIeld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(sender: AnyObject)
    {
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func loginWeChat(sender: AnyObject)
    {
        
    }
    @IBAction func logInBtn(sender: AnyObject)
    {
        let homeVC = self.storyboard?.instantiateViewControllerWithIdentifier("HomeView") as! HomeView
        self.navigationController?.pushViewController(homeVC, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
