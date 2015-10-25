//
//  LuckymoneyTableViewCell.swift
//  Sharity
//
//  Created by Zoesh on 10/24/15.
//  Copyright © 2015 Zoesh. All rights reserved.
//

import UIKit
protocol LuckymoneyCellDelegate {
    func didTappedBuyButton () -> Void
    
}
class LuckymoneyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
