//
//  ViewController.swift
//  SOPT_iOS_1TH_Assignment
//
//  Created by 이재용 on 2020/10/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(login), name: .init("login"), object: nil)
    }

    @objc func login(_ notification: Notification) {
        
        guard let info = notification.userInfo as? [String: Any] else { return }
        let partText: String? = info["part"] as? String
        let nameText: String? = info["name"] as? String
        
        partLabel.text = partText == "" ? "iOS" : partText
        welcomeLabel.text = nameText == "" ? "이재용님 안녕하세요~!!" : nameText
    }
}

