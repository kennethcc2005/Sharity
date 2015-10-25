//
//  HomeTableViewCell.swift
//  Sharity
//
//  Created by Zoesh on 10/24/15.
//  Copyright © 2015 Zoesh. All rights reserved.
//

import UIKit

protocol HomeCellDelegate {
    func didTappedBuyButton () -> Void
    
}

class HomeTableViewCell: UITableViewCell {
    
    var delegate: HomeCellDelegate?
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBAction func buyAction(sender: AnyObject) {
        delegate?.didTappedBuyButton()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
