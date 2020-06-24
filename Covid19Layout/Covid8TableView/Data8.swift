//
//  Data8.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation



struct Data8 {
    let imageBox: String
//    let imageCheck: String
    let nameLabel: String
}


func createData8() -> [Data8] {
    let data1 = Data8(imageBox: "iconbox", nameLabel: "Fever or feeling feverish (chills, sweating)")
    let data2 = Data8(imageBox: "iconbox", nameLabel: "Shortness of breath (not severe)")
    let data3 = Data8(imageBox: "iconbox", nameLabel: "Cough")
    let data4 = Data8(imageBox: "iconbox", nameLabel: "Other")
    
    
    return [data1, data2, data3, data4]
}
