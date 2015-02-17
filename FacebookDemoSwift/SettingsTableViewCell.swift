//
//  SettingsTableViewCell.swift
//  FacebookDemoSwift
//
//  Created by Jasdev Singh on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {


    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
