//
//  SettingsTableViewController.swift
//  FacebookDemoSwift
//
//  Created by Jasdev Singh on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class SettingsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var settingsTableView: UITableView!
    let settingsLabels = ["Links", "Statuses", "Photos", "Videos"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = settingsTableView.dequeueReusableCellWithIdentifier("com.jasdev.SettingsCell") as! SettingsTableViewCell

        cell.settingLabel.text = settingsLabels[indexPath.row]
        cell.settingSwitch.on = false
        cell.settingSwitch.addTarget(self, action: "cellSwitched:", forControlEvents: UIControlEvents.ValueChanged)

        return cell
    }


    func cellSwitched(sender:UISwitch) {
        println(settingsTableView.indexPathForCell((sender.superview?.superview as! SettingsTableViewCell))!.row)
    }
}
