//
//  outletListView.swift
//  Shanghua
//
//  Created by jarvics soft on 30/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class outletListView: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate
{

    
    var outletProducts = NSMutableArray()
    
    @IBOutlet weak var outletCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        outletProducts = ["flower","flower1","flower2","flower3","flower4","flower5","flower6","flower7","flower8"]
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func favouriteBtn(sender: AnyObject)
    {
        
        let FavouriteVC = self.storyboard?.instantiateViewControllerWithIdentifier("FavouriteOutletView") as! FavouriteOutletView
        
        self.navigationController?.pushViewController(FavouriteVC, animated: false)
        
    }
    @IBAction func searchBtn(sender: AnyObject)
    {
        
        let SearchVC = self.storyboard?.instantiateViewControllerWithIdentifier("SearchView") as! SearchView
        
        self.navigationController?.pushViewController(SearchVC, animated: false)
        
    }
    @IBAction func ListingOutlet(sender: AnyObject)
    {
        let outletListVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletListingView") as! OutletListingView
        
        self.navigationController?.pushViewController(outletListVC, animated: false)
        
    }
    

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return outletProducts.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let outletCell = collectionView.dequeueReusableCellWithReuseIdentifier("OutletList", forIndexPath: indexPath) as! outletCollectionViewCell
        
        
        outletCell.outletImageView.image = UIImage(named:outletProducts[indexPath.row] as! String)
        
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
        return CGSizeMake((view.frame.size.width/3.2)+4.0, (view.frame.size.width/3.2)+4.0)
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        let  outletDetailVC = self.storyboard?.instantiateViewControllerWithIdentifier("OutletDetailView") as! OutletDetailView
        
        self.navigationController?.pushViewController(outletDetailVC, animated: true)
        
    }
    
    //MARK:- Back Button
    
    @IBAction func backBtn(sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKindOfClass(HomeView)
            {
                self.navigationController?.popToViewController(controller as UIViewController, animated: true)
                break
            }
        }
    }
    
    
    
    
    
}
