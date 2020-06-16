//
//  CustomsLabel + Oval.swift
//  Covid19Layout
//
//  Created by User on 6/15/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit


class CustomsLabel: UILabel {
    init(_ title: String,_ titleColor: UIColor, _ backgroundColor: UIColor,_ frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        self.text = title
        self.textColor = titleColor
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 4
        self.layer.masksToBounds = true
        
    }
    
}

class CustomsOval: UIView {
    init(_ backgroundColor: UIColor,_ frame: CGRect){
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.bounds.width/2
        self.layer.masksToBounds = true
    }
}
