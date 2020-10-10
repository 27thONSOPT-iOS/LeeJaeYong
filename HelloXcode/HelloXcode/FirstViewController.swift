//
//  FirstViewController.swift
//  HelloXcode
//
//  Created by 이재용 on 2020/10/10.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var updateStateLabel: UILabel!
    @IBOutlet var updateIntervalLabel: UILabel!
    @IBOutlet var updateStateSwitch: UISwitch!
    @IBOutlet var updateIntervalStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    @IBAction func valueChangedSwitch(_ sender: UISwitch) {
        
        if sender.isOn {
            self.updateStateLabel.text = "자동 갱신"
        } else {
            self.updateStateLabel.text = "수동 갱신"
        }
    }
    
    @IBAction func valueChangedStepper(_ sender: UIStepper) {
        
        updateIntervalLabel.text = "\(Int(sender.value))분 마다"
    }
    
    @IBAction func touchUpSubmit(_ sender: Any) {
        
        if let dvc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            
            dvc.email = self.emailTextField.text
            dvc.isAutoUpdate = self.updateStateSwitch.isOn
            dvc.updateInterval = Int(self.updateIntervalStepper.value)
            dvc.modalPresentationStyle = .fullScreen
            
            self.present(dvc, animated: true, completion: nil)
        }
    }
}
