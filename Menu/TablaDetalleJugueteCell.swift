//
//  TablaDetalleJugueteCell.swift
//  Menu
//
//  Created by user217123 on 7/18/22.
//

import UIKit

class TablaDetalleJugueteCell: UITableViewCell {

    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var status: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
