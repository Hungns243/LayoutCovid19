//
//  CustomsTableViewCell.swift
//  Covid19Layout


import UIKit

class CustomsTableViewCell: UITableViewCell {
    
    let containerView: UIView = {
        let viewCrt = UIView()
//        viewCrt.backgroundColor = UIColor.backgroundColor()
        viewCrt.backgroundColor = UIColor.white
        return viewCrt
    }()
    
    let label: UILabel = {
        let label = UILabel()
        
        label.textColor = UIColor.fontColor()
        label.font = UIFont.systemFont(ofSize: 24)
//        label.text = "COVID - 19 Test Request"
        
        return label
    }()
    
    let ovalView: UIView = {
        let ovalview = UIView()
        
        return ovalview
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        setupLayout()
        self.backgroundColor = UIColor.backgroundColor()
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0).isActive = true
        label.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 0.8).isActive = true
//        label.heightAnchor.constraint(equalToConstant: self.frame.size.height/1).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16).isActive = true
//        label.backgroundColor = .red
        
        containerView.addSubview(ovalView)
        ovalView.translatesAutoresizingMaskIntoConstraints = false
        
    
        ovalView.widthAnchor.constraint(equalToConstant: 135).isActive = true
        ovalView.heightAnchor.constraint(equalToConstant: 135).isActive = true
        ovalView.topAnchor.constraint(equalTo: label.topAnchor, constant: 0).isActive = true
        ovalView.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 0).isActive = true
        ovalView.backgroundColor = UIColor.fontColor()
    }

    override func draw(_ rect: CGRect) {
        
        ovalView.layer.cornerRadius = ovalView.bounds.width/2
        ovalView.layer.masksToBounds = true
        containerView.clipsToBounds = true
        


    }
    
  
}
