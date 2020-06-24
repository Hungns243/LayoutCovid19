//
//  Data10.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data10 {
    let imageIcon: String
    let nameLabel: String
    
}

func createData10() -> [Data10] {
    let data1 = Data10(imageIcon: "iconlike", nameLabel: "Yes")
    let data2 = Data10(imageIcon: "icondislike", nameLabel: "No")
    
    
    
    return [data1, data2]
}

