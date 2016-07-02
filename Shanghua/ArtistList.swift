//
//  ArtistList.swift
//  Shanghua
//
//  Created by jarvics soft on 30/06/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ArtistList: UIViewController {

    @IBOutlet weak var artistCollectionView: UICollectionView!
    
    var artistList = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        artistList = ["girlImage","girlImage1","girlImage2","girlImage3","girlImage4","girlImage5","girlImage6","girlImage7","girlImage8"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return artistList.count
    }

    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let artistCell = collectionView.dequeueReusableCellWithReuseIdentifier("ArtistCell", forIndexPath: indexPath) as! ArtistCell
        
        
        artistCell.artistImage.image = UIImage(named:artistList[indexPath.row] as! String)
        
        artistCell.wrapperView.layer.cornerRadius = 7.0
        artistCell.wrapperView.layer.masksToBounds = true
        return artistCell
        
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
        
        let infoVC = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistDetailView") as! ArtistDetailView
        
        self.navigationController?.pushViewController(infoVC, animated: false)
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
  
    @IBAction func newsActivityBtn(sender: AnyObject)
    {
        let newsACtivityBtn = self.storyboard?.instantiateViewControllerWithIdentifier("NewsActivityView") as! NewsActivityView
        
        self.navigationController?.pushViewController(newsACtivityBtn, animated: false)
    }
   
    @IBAction func promoViewBtn(sender: AnyObject)
    {
        let promoVC = self.storyboard?.instantiateViewControllerWithIdentifier("promosListView") as! promosListView
        
        self.navigationController?.pushViewController(promoVC, animated: false)
        
    }

}
