//
//  ViewController.swift
//  HelloXcode
//
//  Created by 이재용 on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpClick(_ sender: UIButton) {
        helloLabel.text = "Hello ON SOPT!!!"
        helloLabel.sizeToFit()
    }
    
    @IBAction func touchUpMove(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "OrangeViewController") else { return }
        
        // 네비게이션 전환 코드
        self.navigationController?.pushViewController(dvc, animated: true)
        
        // modal 전환 코드
        //self.present(dvc, animated: true, completion: nil)
    }
}


