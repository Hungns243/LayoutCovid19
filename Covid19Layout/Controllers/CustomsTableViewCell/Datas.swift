//
//  Datas.swift
//  Covid19Layout

import Foundation


struct Datas {
    var title: String
}


func createData() -> [Datas] {
    let label1 = Datas(title: "COVID - 19 Test Request")
    let label2 = Datas(title: "COVID - 19 Prevention")
    let label3 = Datas(title: "Important Numbers")
    let label4 = Datas(title: "Suport")
    
    
    return [label1, label2, label3, label4]
}
