//
//  ArtistBlogDetailViewController.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ArtistBlogDetailViewController: UIViewController {

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
        self.navigationController?.popViewControllerAnimated(false)
    }

    @IBAction func galleryButton(sender: AnyObject)
    {
        
    }
    @IBAction func aboutMEBtn(sender: AnyObject)
    {
        let aboutMe = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistDetailView") as! ArtistDetailView
        
        self.navigationController?.pushViewController(aboutMe, animated: false)
    }

}
