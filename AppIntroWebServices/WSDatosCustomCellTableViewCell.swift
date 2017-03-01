//
//  WSDatosCustomCellTableViewCell.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSDatosCustomCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var miIdUsuarioLBL: UILabel!
    @IBOutlet weak var miNumeroIdLBL: UILabel!
    @IBOutlet weak var miTituloLBL: UILabel!
    @IBOutlet weak var miCuerpoLBL: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
