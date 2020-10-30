//
//  ViewController.swift
//  SOPT_iOS_2ND_Assignment
//
//  Created by 이재용 on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var goTopButton: UIButton!
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var profileScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileScrollView.delegate = self
        
        goTopButton.layer.cornerRadius = goTopButton.frame.width / 2 
    }
    
    @IBAction func goTop(_ sender: Any) {
        profileScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {    
        let scrollViewOffSet = scrollView.contentOffset.y
        goTopButton.isHidden = scrollViewOffSet < bannerView.frame.height ? true : false
    }
}
