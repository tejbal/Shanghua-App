//
//  HomeView.swift
//  Shanghua
//
//  Created by jarvics soft on 29/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class HomeView: UIViewController {

    @IBOutlet weak var friendsView: UIView!
    @IBOutlet weak var outletView: UIView!
    
    @IBOutlet weak var meView: UIView!
    @IBOutlet weak var chatView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        cornerEdges(outletView)
        cornerEdges(friendsView)
        cornerEdges(chatView)
        cornerEdges(meView)
        
        
        // Do any additional setup after loading the view.
    }

    
    func cornerEdges(views:UIView)
    {
        views.layer.cornerRadius = 25.0
        views.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        views.layer.masksToBounds = true
        
    }
    
    @IBAction func outletViewBtn(sender: AnyObject)
    {
        let outletlistVC = self.storyboard?.instantiateViewControllerWithIdentifier("outletListView") as! outletListView
        
        self.navigationController?.pushViewController(outletlistVC, animated: true)
        
    }
    
    
    
    @IBAction func friendsViewBtn(sender: AnyObject) {
    }
    
    
    @IBAction func chatViewBtn(sender: AnyObject) {
    }
    
    
    @IBAction func mrViewBtn(sender: AnyObject) {
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
