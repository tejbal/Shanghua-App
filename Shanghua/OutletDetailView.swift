//
//  OutletDetailView.swift
//  Shanghua
//
//  Created by jarvics soft on 30/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class OutletDetailView: UIViewController {

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
            if controller.isKindOfClass(outletListView)
            {
                self.navigationController?.popToViewController(controller as UIViewController, animated: true)
                break
            }
        }
    }
    
    
    @IBAction func artistBtn(sender: AnyObject)
    {
        let artistDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistList") as! ArtistList
        
        self.navigationController?.pushViewController(artistDetailVC, animated: false)
        
        
    }
    @IBAction func promoViewBtn(sender: AnyObject)
    {
        let promoVC = self.storyboard?.instantiateViewControllerWithIdentifier("promosListView") as! promosListView
        
        self.navigationController?.pushViewController(promoVC, animated: false)
        
    }
   
    @IBAction func newsActivityBtn(sender: AnyObject)
    {
        let newsActivityVC = self.storyboard?.instantiateViewControllerWithIdentifier("NewsActivityView") as! NewsActivityView
        
        self.navigationController?.pushViewController(newsActivityVC, animated: false)
    }
}
