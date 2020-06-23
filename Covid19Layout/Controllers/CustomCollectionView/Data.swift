//
//  Data.swift
//  Covid19Layout
//
//  Created by User on 6/13/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data {
    let imageIcon: String
    let nameLabel: String
    
}

func createData1() -> [Data] {
    let data1 = Data(imageIcon: "iconP", nameLabel: "Self")
    let data2 = Data(imageIcon: "iconP", nameLabel: "Family")
    let data3 = Data(imageIcon: "icon2", nameLabel: "Family(senior)")
    let data4 = Data(imageIcon: "icon3", nameLabel: "Emergency")
    
    
    return [data1, data2, data3, data4]
}
