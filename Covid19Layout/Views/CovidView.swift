//
//  CovidView.swift
//  Covid19Layout


import UIKit

class CovidView: UIView {
    
    let label: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let ovalView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    init(_ text: String, _ textColor: UIColor, _ frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        self.label.text = text
        self.label.textColor = textColor
        self.ovalView.backgroundColor = UIColor.fontColor()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        ovalView.layer.cornerRadius = ovalView.bounds.height/2
        ovalView.layer.masksToBounds = true
        self.clipsToBounds = true
        self.layer.cornerRadius = 5
    }
    
    func setupLayout(){
        self.addSubview(label)
        self.addSubview(ovalView)
        
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        label.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        
        
        ovalView.topAnchor.constraint(equalTo: label.topAnchor).isActive = true
        ovalView.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 0).isActive = true
        ovalView.widthAnchor.constraint(equalToConstant: 135).isActive = true
        ovalView.heightAnchor.constraint(equalToConstant: 135).isActive = true
        
        
    }

}
