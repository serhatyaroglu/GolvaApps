//
//  fotoData.swift
//  GolvaApp
//
//  Created by serhat yaroglu on 19.03.2022.
//

import Foundation
class fotoResponse{
    var fotoid:Int?
    var foto:String?
    var fotoName:String?

    init(){}
    init(fotoid:Int?,foto:String?,fotoName:String?){
        self.fotoid = fotoid
        self.foto = foto
        self.fotoName = fotoName
    }
}
