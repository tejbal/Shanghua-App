//
//  NewsActivityView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class NewsActivityView: UIViewController,UITableViewDataSource,UITableViewDelegate
{

    @IBOutlet weak var newsActuvityTableView: UITableView!
    
    var newsActivityList = NSMutableArray()
    var newsActivityDates = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        newsActivityList = ["girlImage","girlImage1","girlImage2","girlImage3","girlImage4","girlImage5","girlImage6","girlImage7","girlImage8"]
        
        newsActivityDates = ["JAN 7,2016","JAN 6,2016","JAN 5,2016","JAN 4,2016","JAN 3,2016","JAN 2,2016","JAN 1,2016","DEC 31,2015","DEC 30,2015"]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return newsActivityList.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
         let newsCell = tableView.dequeueReusableCellWithIdentifier("NewsActivityCell") as! NewsActivityCell
        
        
        if indexPath.row % 2 == 0
        {
            newsCell.backgroundColor = UIColor(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1.0)
        }
        else
        {
            newsCell.backgroundColor = UIColor.whiteColor()
        }
        
        newsCell.newsImageView.image = UIImage(named: newsActivityList[indexPath.row] as! String)
        
        newsCell.dateLbl.text = newsActivityDates[indexPath.row] as! String
        
        
        return newsCell
        
    }
    
    
    @IBAction func promoBtn(sender: AnyObject)
    {
        let promoVC = self.storyboard?.instantiateViewControllerWithIdentifier("promosListView") as! promosListView
        
        self.navigationController?.pushViewController(promoVC, animated: false)
    }
    @IBAction func artistBtn(sender: AnyObject)
    {
        let artistVC = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistList") as! ArtistList
        self.navigationController?.pushViewController(artistVC, animated: false)
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
    @IBAction func infoBtn(sender: AnyObject)
    {
        let infoVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletDetailView") as! OutletDetailView
        
        self.navigationController?.pushViewController(infoVC, animated: false)
    }
}
