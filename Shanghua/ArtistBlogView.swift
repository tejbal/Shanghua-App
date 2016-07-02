//
//  ArtistBlogView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ArtistBlogView: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var blogListTablevIew: UITableView!
    
    var blogImages = NSMutableArray()
    var blogDates = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        blogListTablevIew.separatorColor = UIColor.clearColor()
        
        
        blogImages = ["girlImage","girlImage1","girlImage2","girlImage3","girlImage4","girlImage5","girlImage6","girlImage7","girlImage8"]
        
        blogDates = ["JAN 7,2016","JAN 6,2016","JAN 5,2016","JAN 4,2016","JAN 3,2016","JAN 2,2016","JAN 1,2016","DEC 31,2015","DEC 30,2015"]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return blogImages.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let blogCell = tableView.dequeueReusableCellWithIdentifier("ArtistBlogCell") as! ArtistBlogCell
        
        
        if indexPath.row % 2 == 0
        {
            blogCell.backgroundColor = UIColor(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1.0)
        }
        else
        {
            blogCell.backgroundColor = UIColor.whiteColor()
        }
        
        blogCell.artiostImage.image = UIImage(named: blogImages[indexPath.row] as! String)
        
        blogCell.dateLbl.text = blogDates[indexPath.row] as? String
        
        
        return blogCell

        
    }
    
    @IBAction func aboutMeButton(sender: AnyObject)
    {
        let aboutMe = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistDetailView") as! ArtistDetailView
        
        self.navigationController?.pushViewController(aboutMe, animated: false)
        
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

}
