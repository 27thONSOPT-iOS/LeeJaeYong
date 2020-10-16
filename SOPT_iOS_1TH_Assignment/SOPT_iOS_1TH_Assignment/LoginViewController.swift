//
//  LoginViewController.swift
//  SOPT_iOS_1TH_Assignment
//
//  Created by 이재용 on 2020/10/16.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let partText = partTextField.text, let nameText = nameTextField.text {
            NotificationCenter.default.post(name: .init("login"), object: nil, userInfo: ["part": partText ,"name": nameText])
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
