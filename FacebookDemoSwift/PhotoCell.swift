//
//  PhotoCell.swift
//  FacebookDemoSwift
//
//  Created by Jasdev Singh on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var postPhotoView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
