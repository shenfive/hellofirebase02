//
//  CreateAccountViewController.swift
//  hellofirebase02
//
//  Created by 申潤五 on 2019/12/14.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var password2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func send(_ sender: Any) {
        let accountString = account.text ?? ""
        let password1String = password1.text ?? ""
        let password2String = password2.text ?? ""
        
        //TODO:檢查是否為 E-mail
        
        //密碼六碼以上
        if password1String.count < 6{
            showAlert("密碼必需六碼以上")
        }
        
        //TODO:檢查密碼是否一致
        if password1String != password2String{
            showAlert("兩次密碼不一致")
        }
        
        
        
        
        //TODO:建帳號
        
        
    }
}
