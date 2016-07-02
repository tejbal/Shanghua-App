//
//  SignUpVIew.swift
//  Shanghua
//
//  Created by jarvics soft on 29/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class SignUpVIew: UIViewController {

    @IBOutlet weak var cancelOkBtn: UIButton!
    @IBOutlet weak var mobileNumberVerificationPopUpView: UIView!
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var popUpOkBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        mobileNumberVerificationPopUpView.layer.cornerRadius = 7.0
        popUpOkBtn.layer.cornerRadius = 7.0
        cancelOkBtn.layer.cornerRadius = 7.0
        cancelOkBtn.layer.borderColor = UIColor(red: 215.0/255, green: 121.0/255, blue: 22.0/255, alpha: 1.0).CGColor
        cancelOkBtn.layer.borderWidth = 2.0
        mobileNumberVerificationPopUpView.layer.masksToBounds = true
        cancelOkBtn.layer.masksToBounds = true
        popUpOkBtn.layer.masksToBounds = true
        mobileNumberVerificationPopUpView.backgroundColor = UIColor.whiteColor()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func okBtn(sender: AnyObject)
    {
        let mobileVerificationVC = self.storyboard?.instantiateViewControllerWithIdentifier("MobileVerificationView") as! MobileVerificationView
        
        self.navigationController?.pushViewController(mobileVerificationVC, animated: true)
        
    }
    @IBAction func cancelBtn(sender: AnyObject)
    {
        self.popUpView.hidden = true
    }
    // MARK :- Menu Button
    
    @IBAction func menuBtn(sender: AnyObject)
    {
        
    }
    
     // MARK :- Search Button
    
    @IBAction func searchBtn(sender: AnyObject)
    {
        
    }
    
    // MARK :- Back Button
    
    @IBAction func backButton(sender: AnyObject)
    {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK :- signUp With Wechat Button

    @IBAction func signUPWithWeChatBtn(sender: AnyObject)
    {
        
        
       
    }
    
     // MARK :- signUp Button
    
     @IBAction func signUpBtn(sender: AnyObject)
    {
       self.popUpView.hidden = false

    }
}
