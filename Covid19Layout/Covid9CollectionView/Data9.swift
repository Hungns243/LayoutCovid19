//
//  Data9.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data9 {
    let imageIcon: String
    let nameLabel: String
    
}

func createData9() -> [Data9] {
    let data1 = Data9(imageIcon: "iconlike", nameLabel: "Yes")
    let data2 = Data9(imageIcon: "icondislike", nameLabel: "No")
    
    
    
    return [data1, data2]
}
