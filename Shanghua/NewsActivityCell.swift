//
//  NewsActivityCell.swift
//  Shanghua
//
//  Created by jarvics soft on 01/07/16.
//  Copyright © 2016 jarvics soft. All rights reserved.
//

import UIKit

class NewsActivityCell: UITableViewCell {

    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var newsDetail: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
