//
//  Data6.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data6 {
    let imageBox: String
//    let imageCheck: String
    let nameLabel: String
}


func createData6() -> [Data6] {
    let data1 = Data6(imageBox: "iconbox", nameLabel: "Moderate to severe difficulty breathing")
    let data2 = Data6(imageBox: "iconbox", nameLabel: "Coughing up blood")
    let data3 = Data6(imageBox: "iconbox", nameLabel: "Signs of low BP (feeling cold, too weak to stand)")
    let data4 = Data6(imageBox: "iconbox", nameLabel: "None of the above")
    
    
    return [data1, data2, data3, data4]
}
