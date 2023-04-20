//
//  ViewController.swift
//  UMCFirstWeek
//
//  Created by 김강현 on 2023/03/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bankButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var tableView: UITableView!
    
    let refreshControl = UIRefreshControl()
    
    var tableViewData: [cellData] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableViewData = [cellData(title: "보통예금(IBK기업은행)", image: UIImage(named: "kiup")!), cellData(title: "토스뱅크 통장", image: UIImage(named: "toss")!), cellData(title: "KB국민ONE통장-보통예금", image: UIImage(named: "kookmin")!), cellData(title: "증권, 토스증권", image: UIImage(named: "toss")!), cellData(title: "포인트, 머니 1개", image: UIImage(named: "toss")!)]
        
        makeUI()
        
        refreshControl.addTarget(self, action: #selector(refreshWork), for: .valueChanged)
        tableView.addSubview(refreshControl)
    }
    
    func makeUI() {
        bankButton.layer.masksToBounds = true
        bankButton.layer.cornerRadius = 15
        
        scrollView.layer.masksToBounds = true
        scrollView.layer.cornerRadius = 15
        
    }
    
    @objc func refreshWork() {
        print("UIRefreshControll worked")
        refreshControl.endRefreshing()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableViewData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        
        cell.customLabel.text = tableViewData[indexPath.row].title
        
        cell.customImageView.image = tableViewData[indexPath.row].image
        
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

