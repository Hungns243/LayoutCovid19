//
//  CustomsButton.swift
//  Covid19Layout
//
//  Created by User on 6/8/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class CustomsButton: UIButton {
    
    init(_ title: String,_ backgroundColor: UIColor,_ frame: CGRect){
        super.init(frame: frame)
        
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        
    }
}
