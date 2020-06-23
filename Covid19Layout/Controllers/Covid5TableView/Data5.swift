//
//  Data5.swift
//  Covid19Layout
//
//  Created by User on 6/23/20.
//  Copyright © 2020 hung. All rights reserved.
//

import Foundation


struct Data5 {
    let imageBox: String
//    let imageCheck: String
    let nameLabel: String
}


func createData5() -> [Data5] {
    let data1 = Data5(imageBox: "iconbox", nameLabel: "Not experiencing any life-threatening symptoms")
    let data2 = Data5(imageBox: "iconbox", nameLabel: "Extremely difficult breathing")
    let data3 = Data5(imageBox: "iconbox", nameLabel: "Blue-colored lips or face")
    let data4 = Data5(imageBox: "iconbox", nameLabel: "Severe and constant pain or pressure in the chest")
    let data5 = Data5(imageBox: "iconbox", nameLabel: "Severe and constant dizziness or lightheadedness")
    let data6 = Data5(imageBox: "iconbox", nameLabel: "Acting confused (new or worsening)")
    let data7 = Data5(imageBox: "iconbox", nameLabel: "Unconscious or very difficult to wake up")
    let data8 = Data5(imageBox: "iconbox", nameLabel: "Slurred speech (new or worsening)")
    let data9 = Data5(imageBox: "iconbox", nameLabel: "New seizure or seizures that won’t stop")
    
    return [data1, data2, data3, data4, data5, data6, data7, data8, data9]
}
