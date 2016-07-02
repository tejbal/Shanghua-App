//
//  SearchView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class SearchView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func recommendedBtn(sender: AnyObject)
    {
        
        let outletVC = self.storyboard?.instantiateViewControllerWithIdentifier("outletListView") as! outletListView
        self.navigationController?.pushViewController(outletVC, animated: false)
        
    }

    @IBAction func favouriteBtn(sender: AnyObject) {
        
        let favVC = self.storyboard?.instantiateViewControllerWithIdentifier("FavouriteOutletView") as! FavouriteOutletView
        self.navigationController?.pushViewController(favVC, animated: false)
        
    }
    @IBAction func listingBtn(sender: AnyObject)
    {
        let OutletListingVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletListingView") as! OutletListingView
        self.navigationController?.pushViewController(OutletListingVC, animated: false)
    }
    @IBAction func backButton(sender: AnyObject)
    {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKindOfClass(HomeView) {
                self.navigationController?.popToViewController(controller as UIViewController, animated: true)
                break
            }
        }
    }
  
}
