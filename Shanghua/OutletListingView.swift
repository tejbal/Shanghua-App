//
//  OutletListingView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class OutletListingView: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var outletTableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    
    var outletList = NSMutableDictionary()
    var listData = NSMutableArray()
    var namelist = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listData = ["flower","flower1","flower2","flower3","flower4","flower5","flower6","flower7","flower8"]
        namelist = ["Ling Ling","Lang Lang","Xing Xing","Li Li","Na Na","Xu Xu","Ling Xu","Xing Li","Xing La"]
        
        
        outletTableView.separatorColor = UIColor.clearColor()
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let listCell = tableView.dequeueReusableCellWithIdentifier("OutletListingCell") as! OutletListingCell
        if (indexPath.row % 2) == 0
        {
            listCell.backgroundColor = UIColor(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1.0)
        }
        else
        {
            listCell.backgroundColor = UIColor.whiteColor()
        }
        
        listCell.listingImageView.image = UIImage(named:listData[indexPath.row] as! String)
        listCell.listingNameLbl.text = namelist[indexPath.row] as? String

        return listCell
        
    }
    
    
    @IBAction func recommendedButton(sender: AnyObject)
    {
        
        let outletVC = self.storyboard?.instantiateViewControllerWithIdentifier("outletListView") as! outletListView
 
        self.navigationController?.pushViewController(outletVC, animated: false)
        
    }
    
    
    
    @IBAction func searchButton(sender: AnyObject) {
        
        let serachVC = self.storyboard?.instantiateViewControllerWithIdentifier("SearchView") as! SearchView
        
        self.navigationController?.pushViewController(serachVC, animated: false)
        
        
    }
    
    @IBAction func favButton(sender: AnyObject)
    {
        
        let favouriteVC = self.storyboard?.instantiateViewControllerWithIdentifier("FavouriteOutletView") as! FavouriteOutletView
        
        self.navigationController?.pushViewController(favouriteVC, animated: false)
        
    }

    @IBAction func backButton(sender: AnyObject)
    {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKindOfClass(HomeView)
            {
                self.navigationController?.popToViewController(controller as UIViewController, animated: true)
                break
            }
        }
        
    }

}
