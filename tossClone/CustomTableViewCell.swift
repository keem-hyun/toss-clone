//
//  CustomTableViewCell.swift
//  tossClone
//
//  Created by 김강현 on 2023/04/15.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var customImageView: UIImageView!
    
    @IBOutlet weak var customLabel: UILabel!
    
    
    var delegate: ButtonTappedDelegate?
    
    
    override func awakeFromNib() {

        super.awakeFromNib()

        // Initialization code

    }


    override func setSelected(_ selected: Bool, animated: Bool) {

        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state

    }
    
    
    
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        delegate?.cellButtonTapped()
    }
    

}
