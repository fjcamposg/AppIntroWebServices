//
//  WSPostModel.swift
//  AppIntroWebServices
//
//  Created by cice on 27/2/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class WSPostModel: NSObject {
    var userId : Int?
    var id: Int?
    var titulo: String?
    var body: String?
    
    init(pUserId: Int, pid: Int, ptitulo: String, pbody: String) {
        self.userId = pUserId
        self.id = pid
        self.titulo = ptitulo
        self.body = pbody
        super.init()
    }
    
}
