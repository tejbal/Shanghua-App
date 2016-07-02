//
//  promosListView.swift
//  Shanghua
//
//  Created by jarvics soft on 30/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class promosListView: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var promolIst: UITableView!
    var promolist = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        promolist = ["promoImage","promoimage1","promoimage2","promoimage3"]
        
        // Do any additional setup after loading the view.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return promolist.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         let promoCell = tableView.dequeueReusableCellWithIdentifier("promoListCell") as! promoListCell
        
        
        promoCell.selectionStyle = .None
        
        promoCell.promolistImage.image = UIImage(named: promolist[indexPath.row] as! String)
        
        return promoCell
        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let promoDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("PromoDetailView") as! PromoDetailView
        
        self.navigationController?.pushViewController(promoDetailVC, animated: false)
        
        
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
    
    @IBAction func newsActivityBtn(sender: AnyObject)
    {
        
        let newsActivitVC = self.storyboard?.instantiateViewControllerWithIdentifier("NewsActivityView") as! NewsActivityView
        
        self.navigationController?.pushViewController(newsActivitVC, animated: false)
        
    }
    @IBAction func artistBtn(sender: AnyObject)
    {
        let artistListVC = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistList") as! ArtistList
        self.navigationController?.pushViewController(artistListVC, animated: false)
    }
    @IBAction func infoBtn(sender: AnyObject)
    {
        let outletDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletDetailView") as! OutletDetailView
        self.navigationController?.pushViewController(outletDetailVC, animated: false)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
