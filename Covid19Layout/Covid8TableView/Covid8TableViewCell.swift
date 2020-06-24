//
//  Covid8TableViewCell.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class Covid8TableViewCell: UITableViewCell {
    
    let containerView: UIView = {
           let view = UIView()
           return view
       }()
       
       let imageBox: UIImageView = {
           let image = UIImageView()
           
           return image
       }()
       
       let nameLabel1: UILabel = {
           let label = UILabel()
           label.font = UIFont.systemFont(ofSize: 12)
           
           return label
       }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.backgroundColor = UIColor.backgroundColor()
        
        setupLayout()
    }
    func setupLayout(){
           self.addSubview(containerView)
           containerView.translatesAutoresizingMaskIntoConstraints = false
           
           containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
           containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
           containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
           containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
           
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
