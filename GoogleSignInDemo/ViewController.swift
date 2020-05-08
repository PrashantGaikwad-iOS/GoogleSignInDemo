//
//  ViewController.swift
//  GoogleSignInDemo
//
//  Created by Prashant Gaikwad on 08/05/20.
//  Copyright © 2020 Prashant Gaikwad. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        GIDSignIn.sharedInstance()?.presentingViewController = self

        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()

        // ...
        let gSignInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        gSignInButton.center = view.center
        view.addSubview(gSignInButton)

    }

    @IBAction func didTapSignOut(_ sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
    }

}

