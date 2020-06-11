//
//  CustomsTextField.swift
//  Covid19Layout
//
//  Created by User on 6/8/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class CustomsTextField: UITextField {

    init(_ title: String, _ backgroundColor: UIColor, _ frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = backgroundColor
        
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 40))
        self.leftViewMode = UITextField.ViewMode.always
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 1.00).cgColor
        self.layer.borderWidth = 1.0
    }

}
