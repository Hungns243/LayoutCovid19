//
//  CustomsCollectionViewCell.swift
//  Covid19Layout
//
//  Created by User on 6/12/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class CustomsCollectionViewCell: UICollectionViewCell {
    
    let label: UILabel = {
        let label1 = UILabel()
        label1.textAlignment = .center
        label1.font = UIFont.systemFont(ofSize: 15)
        return label1
    }()
    
    let image: UIImageView = {
        let image1 = UIImageView()
        return image1
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = true
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupLayout() {
        
        self.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        image.widthAnchor.constraint(equalToConstant: 25).isActive = true
        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //        image.backgroundColor = .blue
        
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16).isActive = true
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //        label.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        label.backgroundColor = .brown
    }
    
}
