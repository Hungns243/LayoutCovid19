//
//  Data6.swift
//  Covid19Layout




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
