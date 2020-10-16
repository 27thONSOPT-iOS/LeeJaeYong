//
//  SignUpViewController.swift
//  SOPT_iOS_1TH_Assignment
//
//  Created by 이재용 on 2020/10/16.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
