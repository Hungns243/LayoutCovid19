//
//  Covid5TableViewCell.swift
//  Covid19Layout
//
//  Created by User on 6/19/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class Covid5TableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
//        view.backgroundColor = .green
        return view
    }()
    
    let imageBox: UIImageView = {
        let imagebox = UIImageView()
        
        return imagebox
    }()
    
    let imageCheckBox: UIImageView = {
        let imagecheck = UIImageView()
        
        return imagecheck
        
    }()
    
    let nameLabel1: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .red
        
//        setupLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        setupLayout()
    }
    
    func setupLayout(){
        
        self.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
//        containerView.backgroundColor = .green
        
        containerView.addSubview(imageBox)
        imageBox.translatesAutoresizingMaskIntoConstraints = false
        
        imageBox.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        imageBox.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageBox.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageBox.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
//        imageBox.backgroundColor = .red
        
        containerView.addSubview(nameLabel1)
        nameLabel1.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameLabel1.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        nameLabel1.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.9).isActive = true
        nameLabel1.leadingAnchor.constraint(equalTo: imageBox.trailingAnchor, constant: 8).isActive = true
        
    }

}
