//
//  PromoDetailView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class PromoDetailView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func promoButton(sender: AnyObject) {
    }
    @IBAction func artistButton(sender: AnyObject)
    {
        let artistVC = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistList") as! ArtistList
        
        self.navigationController?.pushViewController(artistVC, animated: false)
        
        
    }
    @IBAction func infoButton(sender: AnyObject)
    {
        let outletDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletDetailView") as! OutletDetailView
        
        self.navigationController?.pushViewController(outletDetailVC, animated: false)
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

}
