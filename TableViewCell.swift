//
//  TableViewCell.swift
//  RecipeAPP_4
//
//  Created by Tanish_MAC on 01/03/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var RecipeApp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
