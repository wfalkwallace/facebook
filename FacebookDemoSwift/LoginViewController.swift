//
//  LoginViewController.swift
//  FacebookDemoSwift
//
//  Created by Timothy Lee on 2/11/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, FBLoginViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        var loginView = FBLoginView();
        loginView.readPermissions = ["public_profile","read_stream","user_photos"]
        loginView.delegate = self
        loginView.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin
        loginView.center = view.center;
        view.addSubview(loginView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
        println("Error")
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        println("FetchedUserInfo")
    }
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        presentLoggedInViewController()
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        println("Logged Out User")
    }
    
    func presentLoggedInViewController() {
        performSegueWithIdentifier("loginSegue", sender: nil)
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
