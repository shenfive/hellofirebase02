//
//  File.swift
//  hellofirebase02
//
//  Created by 申潤五 on 2019/12/14.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

extension UIViewController{
    func showAlert(_ msg:String){
        let alert = UIAlertController(title: "注意", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "我知道了", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
