//
//  ArtistBlogCellTableViewCell.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class ArtistBlogCell
: UITableViewCell {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var blogTitle: UILabel!
    @IBOutlet weak var artiostImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
