//
//  Data7.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data7 {
    let imageIcon: String
    let nameLabel: String
    
}

func createData7() -> [Data7] {
    let data1 = Data7(imageIcon: "iconlike", nameLabel: "Yes")
    let data2 = Data7(imageIcon: "icondislike", nameLabel: "No")
    let data3 = Data7(imageIcon: "iconhoicham", nameLabel: "Maybe")
    
    
    return [data1, data2, data3]
}
