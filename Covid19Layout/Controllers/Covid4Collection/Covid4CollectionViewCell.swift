//
//  Covid4CollectionViewCell.swift
//  Covid19Layout


import UIKit

class Covid4CollectionViewCell: UICollectionViewCell {
    
   let containerView: UIView = {
        let view = UIView()
        
        return view
    }()
    
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
        
        self.backgroundColor = .white
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = true
        
        setupLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        
        self.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4).isActive = true
        
        containerView.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        image.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16).isActive = true
        image.widthAnchor.constraint(equalToConstant: 25).isActive = true
        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        //        image.backgroundColor = .blue
        
        containerView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 16).isActive = true
        label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //        label.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
        //        label.backgroundColor = .brown
    }
}
