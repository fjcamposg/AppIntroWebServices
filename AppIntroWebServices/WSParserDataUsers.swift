//
//  WSParserDataUsers.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit
import SwiftyJSON

class WSParserDataUsers: NSObject {
    
    func getPostParserModelUsers(_ dataFromNetworks: NSData) -> [WSPostModelUsers] {
        var arrayPostModelUsers = [WSPostModelUsers]()
        let jsonLegibleUsers = JSON(data: dataFromNetworks as Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        for item in 0..<jsonLegibleUsers.count{

            let geoModel = WSGeoUsers(pLat: jsonLegibleUsers[item]["address"]["geo"]["lat"].string!
            , pLng: jsonLegibleUsers[item]["address"]["geo"]["lng"].string!)
        
            let companyModel = WSCompanyUsers(pName: jsonLegibleUsers[item]["company"]["name"].string!,
                                              pCatchPhrase: jsonLegibleUsers[item]["company"]["catchPhrase"].string!,
                                              pBs: jsonLegibleUsers[item]["company"]["bs"].string!)
        
            let direccionModel = WSDireccionesUsers(pStreet: jsonLegibleUsers[item]["address"]["street"].string!,
                                                    pSuite: jsonLegibleUsers[item]["address"]["suite"].string!,
                                                    pCity: jsonLegibleUsers[item]["address"]["city"].string!,
                                                    pZipcode: jsonLegibleUsers[item]["address"]["zipcode"].string!,
                                                    pGeo: geoModel)
            
            let usersModel = WSPostModelUsers(pId: jsonLegibleUsers[item]["id"].int!,
                                              pName: jsonLegibleUsers[item]["name"].string!,
                                              pUserName: jsonLegibleUsers[item]["username"].string!,
                                              pEmail: jsonLegibleUsers[item]["email"].string!,
                                              pAddress: direccionModel,
                                              pPhone: jsonLegibleUsers[item]["phone"].string!,
                                              pWebsite: jsonLegibleUsers[item]["website"].string!,
                                              pCompany: companyModel)
            arrayPostModelUsers.append(usersModel)
     
        }
               return arrayPostModelUsers
    }

}
