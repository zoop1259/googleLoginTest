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
        //스타일?
        //GIDSignInButtonColorScheme.dark
        //GIDSignInButtonStyle.standard
        
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            guard let user = user else { return }
            
            user.authentication.do { authentication, error in
                guard error == nil else { return }
                guard let authentication = authentication else { return }

                let idToken = authentication.idToken
                // Send ID token to backend (example below).
            }

                let emailAddress = user.profile?.email

               let fullName = user.profile?.name
               let givenName = user.profile?.givenName
               let familyName = user.profile?.familyName

               let profilePicUrl = user.profile?.imageURL(withDimension: 320)
        }
            
    }
    
    //로그아웃버튼
//    @IBAction func signOut(sender: Any) {
//      GIDSignIn.sharedInstance.signOut()
//    }

}


