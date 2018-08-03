//
//  TableViewCell.swift
//  HajjHackathon_eWallet
//
//  Created by Fadhel Alanazi on 21/11/1439 AH.
//  Copyright © 1439 Elee Free. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var pic: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
