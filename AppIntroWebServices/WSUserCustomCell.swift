//
//  WSUserCustomCell.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSUserCustomCell: UITableViewCell {

    //MARK: -IBOutlet
    
    
    @IBOutlet weak var miId: UILabel!
    @IBOutlet weak var miNombre: UILabel!
    @IBOutlet weak var miUsername: UILabel!
    @IBOutlet weak var miEmail: UILabel!
    @IBOutlet weak var miCalle: UILabel!
    @IBOutlet weak var miNumero: UILabel!
    @IBOutlet weak var miCiudad: UILabel!
    @IBOutlet weak var miCP: UILabel!
    @IBOutlet weak var miLatitud: UILabel!
    @IBOutlet weak var miLongitud: UILabel!
    @IBOutlet weak var miTelefono: UILabel!
    @IBOutlet weak var miWeb: UILabel!
    @IBOutlet weak var miNombreEmpresa: UILabel!
    
    
    @IBOutlet weak var miPromo: UILabel!
    
    
    @IBOutlet weak var miBs: UILabel!
    
    @IBOutlet weak var botonMapa: UIButton!
    
    @IBOutlet weak var botonWeb: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
