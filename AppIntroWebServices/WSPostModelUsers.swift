//
//  WSPostModelUsers.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostModelUsers: NSObject {
    var id : Int?
    var name: String?
    var username: String?
    var email: String?
    var address : WSDireccionesUsers?
    var phone : String?
    var website : String?
    var company: WSCompanyUsers?

    init(pId : Int,  pName : String, pUserName : String, pEmail : String, pAddress : WSDireccionesUsers, pPhone: String, pWebsite: String, pCompany: WSCompanyUsers){
        self.id = pId
        self.name = pName
        self.username = pUserName
        self.email = pEmail
        self.address = pAddress
        self.phone = pPhone
        self.website = pWebsite
        self.company = pCompany
        super.init()
    }
    
}

