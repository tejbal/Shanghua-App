//
//  MobileVerificationView.swift
//  Shanghua
//
//  Created by jarvics soft on 29/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class MobileVerificationView: UIViewController {

    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var mobileNoLbl: UILabel!
    @IBOutlet weak var secondsLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        codeTextField.layer.cornerRadius = 3.0
                
        codeTextField.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitBtn(sender: AnyObject)
    {
        let setupVC = self.storyboard?.instantiateViewControllerWithIdentifier("SetUpCredentialsView") as! SetUpCredentialsView
        
        self.navigationController?.pushViewController(setupVC, animated: true)
        
    }
    

    @IBAction func resendCodeBtn(sender: AnyObject)
    {
        
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
