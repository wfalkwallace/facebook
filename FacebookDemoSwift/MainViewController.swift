//
//  MainViewController.swift
//  FacebookDemoSwift
//
//  Created by Timothy Lee on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var posts: [NSDictionary]?

    @IBOutlet weak var feedTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        feedTableView.rowHeight = UITableViewAutomaticDimension
        feedTableView.estimatedRowHeight = 90
        reload()
    }

    func reload() {
        FBRequestConnection.startWithGraphPath("/me/home", parameters: nil, HTTPMethod: "GET") { (connection: FBRequestConnection!, result: AnyObject!, error: NSError!) -> Void in
            self.posts = result["data"] as? [NSDictionary]

            self.feedTableView.reloadData()
        }
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts?.count ?? 0
    }

//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = posts![indexPath.row]

        if let picture = post["picture"] as? String {
            let cell = tableView.dequeueReusableCellWithIdentifier("com.jasdev.PhotoCell") as! PhotoCell

            cell.postPhotoView.setImageWithURL(NSURL(string: picture)!)
            let from = post["from"]! as! NSDictionary
            cell.usernameLabel.text = from["name"] as! String
            if let message = post["message"] as? String {
                cell.postLabel.text = message
            }

            return cell

        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("com.jasdev.StatusCell") as! StatusCell

            let from = post["from"]! as! NSDictionary
            cell.usernameLabel.text = from["name"] as! String
            if let message = post["message"] as? String {
                cell.postLabel.text = message
            }
            
            return cell
        }
    }

}
