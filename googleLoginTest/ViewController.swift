//
//  ViewController.swift
//  googleLoginTest
//
//  Created by 강대민 on 2021/12/14.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    let signInConfig = GIDConfiguration.init(clientID: "257551777234-fm5l767d3t8a41k84km2bkc9op0t9816.apps.googleusercontent.com")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GoogleBtn(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
  
            //스타일?
//            GIDSignInButtonColorScheme.dark
//            GIDSignInButtonStyle.iconOnly
            
            guard let user = user else { return }

                let emailAddress = user.profile?.email
        }
    
    }

}

