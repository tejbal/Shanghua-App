//
//  ArtistGallery.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ArtistGallery: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var galleryImage: UIImageView!
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    var galleryImages = NSMutableArray()
    var images = [UIImage]()
    var imageHeight = [CGFloat]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        images = [UIImage(named: "galleryImage")!,UIImage(named: "galleryImage1")!,UIImage(named: "galleryImage2")!,UIImage(named: "galleryImage3")!,UIImage(named: "galleryImage4")!,UIImage(named: "galleryImage5")!]
        
       
        
        
       
        
        getHeight()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func getHeight()
    {
        for imageSize in images
        {
            var img = UIImage()
            img = imageSize
            
            
            
            print(img.size.height)
            
            imageHeight.append(img.size.height)
            
            
        }
        
        galleryImages = ["galleryImage","galleryImage1","galleryImage2","galleryImage3","galleryImage4","galleryImage5"]
        
        
        print(imageHeight.count)
        
        galleryCollectionView.reloadData()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return imageHeight.count
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let galleryCell = collectionView.dequeueReusableCellWithReuseIdentifier("ArtistGalleryCollection", forIndexPath: indexPath) as! ArtistGalleryCollection
        
        galleryCell.galleryImageView.contentMode = .ScaleAspectFill
        
        galleryCell.galleryImageView.image = UIImage(named:galleryImages[indexPath.row] as! String)
        
       
        return galleryCell
        
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
        return CGSizeMake((view.frame.size.width/2.0)+18.0,imageHeight[indexPath.row])
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        
        let infoVC = self.storyboard?.instantiateViewControllerWithIdentifier("ArtistDetailView") as! ArtistDetailView
        
        self.navigationController?.pushViewController(infoVC, animated: false)
    }

    
    
    @IBAction func backButton(sender: AnyObject) {
    }

    @IBAction func aboutMeBtn(sender: AnyObject) {
    }
    @IBAction func blogButton(sender: AnyObject) {
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
