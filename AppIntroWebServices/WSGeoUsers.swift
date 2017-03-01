//
//  WSGeoUsers.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSGeoUsers: NSObject {

    var lat: String?
    var lng: String?
    init(pLat : String, pLng : String) {
        self.lat = pLat
        self.lng = pLng
        super.init()
    }

    
}
