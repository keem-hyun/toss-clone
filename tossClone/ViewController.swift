//
//  ViewController.swift
//  UMCFirstWeek
//
//  Created by 김강현 on 2023/03/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bankButton: UIButton!
    
    
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

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell tapped")
    }
    
}

extension ViewController: ButtonTappedDelegate {
    func cellButtonTapped() {
        print("Button tapped")
    }
}

