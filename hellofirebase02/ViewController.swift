//
//  ViewController.swift
//  hellofirebase02
//
//  Created by 申潤五 on 2019/12/14.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var loginStatus: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var checkEmail: UILabel!
    var mAuth:Auth!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mAuth = Auth.auth()
        
        mAuth.addStateDidChangeListener { (auth, user) in
            if let user = user{
                print(user.uid)
                self.loginStatus.text = "login:\(user.uid)"
                self.checkEmail.text = "經過 mail 認證:\(user.isEmailVerified)"

            }else{
                print("logout")
                self.loginStatus.text = "logout"
            }
        }
        
        
    }

    @IBAction func signOut(_ sender: Any) {
        do {
            try mAuth.signOut()
        } catch  {
            showAlert("\(error.localizedDescription)")
        }
        
    }
    @IBAction func emailVeri(_ sender: Any) {
        mAuth.currentUser?.sendEmailVerification(completion: { (error) in
            if error != nil{
                self.showAlert("error:\(error?.localizedDescription ?? "不明email錯誤")")
            }
        })
        
    }
    
    @IBAction func signIn(_ sender: Any) {
        let emailString = email.text ?? ""
        let passwordString = password.text ?? ""
        
        //TODO:各種檢查
        
        mAuth.signIn(withEmail: emailString, password: passwordString) { (resoult, error) in
            if error != nil{
                self.showAlert("\(error?.localizedDescription ?? "不明錯誤")")
            }
        }
    }
}

