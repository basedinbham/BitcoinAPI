//
//  CoinTableViewCell.swift
//  Dogs40
//
//  Created by Delstun McCray on 8/4/21.
//

import UIKit

class CoinTableViewCell: UITableViewCell {

    @IBOutlet weak var coinNameLabel: UILabel!
    @IBOutlet weak var coinValueLabel: UILabel!
    @IBOutlet weak var coinUnitLabel: UILabel!
    @IBOutlet weak var coinTypeLabel: UILabel!
    
    var coin: Coin? {
        didSet {
            updateViews()
        }
    }

    func updateViews() {
        guard let coin = coin else { return }
        
        let underlineAttriString = NSAttributedString(string: coin.name,
                                                          attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue])
        coinNameLabel.attributedText = underlineAttriString
        coinValueLabel.text = "\(coin.value)"
        coinUnitLabel.text = coin.unit
        coinTypeLabel.text = coin.type
    }
    
}
