//
//  APIManagerDAta.swift
//  AppIntroWebServices
//
//  Created by cice on 1/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class APIManagerDAta: NSObject {
    let post = WSParserDataUno()
    let users = WSParserDataUsers()
    
    static let shared = APIManagerDAta()
    
    func getPostsApi() -> [WSPostModel]{
        let url = URL (string: CONSTANTES.BASE_URL.BASE_URL_POST)
        let jsonFromData = NSData(contentsOf: url!)
        let arrayPostModel = post.getPostParserModel(jsonFromData!)
        return arrayPostModel
    }
    
    func getUsersApi() -> [WSPostModelUsers]{
        let url = URL (string: CONSTANTES.BASE_URL.BASE_URL_USER)
        let jsonFromData = NSData(contentsOf: url!)
        let arrayPostModelUsers = users.getPostParserModelUsers(jsonFromData!)
        return arrayPostModelUsers
    }

}
