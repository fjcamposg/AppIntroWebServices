//
//  WSDireccionesUsers.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSDireccionesUsers: NSObject {

    var street : String?
    var suite: String?
    var city: String?
    var zipcode: String?
    var geo: WSGeoUsers?
    
    init(pStreet : String, pSuite: String, pCity : String,  pZipcode: String, pGeo : WSGeoUsers) {
        self.street = pStreet
        self.suite = pSuite
        self.city = pCity
        self.zipcode = pZipcode
        self.geo = pGeo
        super.init()
    }
    
    
    
}
