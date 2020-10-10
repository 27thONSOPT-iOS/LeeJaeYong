//
//  OrangeViewController.swift
//  HelloXcode
//
//  Created by 이재용 on 2020/10/10.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpClose(_ sender: Any) {
        
        // 네비게이션 전환 해제
        self.navigationController?.popViewController(animated: true)
        
        // 모달 전환 해제
        self.dismiss(animated: true, completion: nil)
    }

}
