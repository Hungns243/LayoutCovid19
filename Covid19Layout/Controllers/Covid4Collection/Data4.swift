//
//  Data4.swift
//  Covid19Layout
//
//  Created by User on 6/17/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data4 {
    let imageIcon: String
    let nameLabel: String
    
}

func createData4() -> [Data4] {
    let data1 = Data4(imageIcon: "iconselected", nameLabel: "Male")
    let data2 = Data4(imageIcon: "iconfinder", nameLabel: "Female")
    let data3 = Data4(imageIcon: "iconfinder2", nameLabel: "Others")
    
    
    return [data1, data2, data3]
}
