//
//  ViewController.swift
//  UMCFirstWeek
//
//  Created by 김강현 on 2023/03/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bankButton: UIButton!
    
    
    @IBOutlet weak var homeTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }
    
    func makeUI() {
        bankButton.layer.masksToBounds = true
        bankButton.layer.cornerRadius = 15
//        bankButton.contentHorizontalAlignment = .left;
        
        

        
        
    }

}

