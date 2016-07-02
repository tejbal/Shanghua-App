//
//  FavouriteOutletView.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class FavouriteOutletView: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var favOutletCollectionView: UICollectionView!
    
    var favOutlet = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        favOutlet = ["flower","flower1","flower2","flower3","flower4","flower5","flower6","flower7","flower8"]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    return favOutlet.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let outletCell = collectionView.dequeueReusableCellWithReuseIdentifier("FavouriteOutletCell", forIndexPath: indexPath) as! FavouriteOutletCell
        
        
        outletCell.favOutletImage.image = UIImage(named:favOutlet[indexPath.row] as! String)
        
        //        outletCell.wrapperView.layer.cornerRadius = 7.0
        //        outletCell.wrapperView.layer.masksToBounds = true
        return outletCell
        
    }
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSizeZero
    }
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return CGSizeMake((view.frame.size.width/3.2)+3.0, (view.frame.size.width/3.2)+3.0)
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
               
    }

    
    

    @IBAction func recommendedBtn(sender: AnyObject)
    {
        let outletVC = self.storyboard?.instantiateViewControllerWithIdentifier("outletListView") as! outletListView
        self.navigationController?.pushViewController(outletVC, animated: false)
    }
  
    @IBAction func searchBtn(sender: AnyObject)
    {
        let serachVC = self.storyboard?.instantiateViewControllerWithIdentifier("SearchView") as! SearchView
        
        self.navigationController?.pushViewController(serachVC, animated: false)
    }
    
    @IBAction func listingBtn(sender: AnyObject) {
        
        let OutletListingVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletListingView") as! OutletListingView
        self.navigationController?.pushViewController(OutletListingVC, animated: false)
        
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
