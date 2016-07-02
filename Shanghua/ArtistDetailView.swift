//
//  ArtistDetailView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ArtistDetailView: UIViewController {

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
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKindOfClass(ArtistList)
            {
                self.navigationController?.popToViewController(controller as UIViewController, animated: true)
                break
            }
        }

    }
    @IBAction func galleryButton(sender: AnyObject)
    {
        let artistGallery = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistGallery") as! ArtistGallery
        self.navigationController?.pushViewController(artistGallery, animated: false)
    }
    @IBAction func blogButton(sender: AnyObject)
    {
        
        let artistBlog = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistBlogView") as! ArtistBlogView
        
        
        self.navigationController?.pushViewController(artistBlog, animated: false)
        
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
