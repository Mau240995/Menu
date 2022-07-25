//
//  TablaJugueteCell.swift
//  Menu
//
//  Created by user217123 on 7/18/22.
//

import UIKit

class TablaJugueteCell: UITableViewCell {

    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var imagJuguete: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
