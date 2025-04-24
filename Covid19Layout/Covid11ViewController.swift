//
//  Covid11ViewController.swift
//  Covid19Layout


import UIKit

class Covid11ViewController: UIViewController {
    
    let menuImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "menu")
        
        return image
    }()
    
    let avatarImage: UIImageView = {
        let avatar = UIImageView()
        avatar.image = UIImage(named: "avataImage")
        
        avatar.layer.masksToBounds = true
        return avatar
    }()
    
    let viewCovid: CovidView = {
        let view1 = CovidView("COVID - 19 Test Request", UIColor.fontCovid(), .zero)
        
        return view1
    }()
    
    let image11: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "image11")
        
        return image
    }()
    
    let label11: UILabel = {
        let label = UILabel()
        
        label.text = "Stay home and take care of yourself. Call your doctor if you get worse"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.backgroundColor = UIColor.backgroundColor()
        
        return label
    }()
    
    let button11: CustomsButton = {
        let button = CustomsButton("VIEW THE TIPS", UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), .zero)
        
//        button.setTitle("VIEW THE TIPS", for: .normal)
//        button.setTitleColor(.white, for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.backgroundColor()
        setupLayout()

        
    }
    
    func setupLayout(){
        
        view.addSubview(avatarImage)
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        
        avatarImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        avatarImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        avatarImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        
        
        view.addSubview(menuImage)
        menuImage.translatesAutoresizingMaskIntoConstraints = false
        
        menuImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        menuImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        menuImage.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor, constant: 0).isActive = true
        menuImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        
        view.addSubview(viewCovid)
        viewCovid.translatesAutoresizingMaskIntoConstraints = false
        
        viewCovid.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        viewCovid.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        viewCovid.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 24).isActive = true
        viewCovid.heightAnchor.constraint(equalToConstant: view.frame.size.height/6).isActive = true
        
        view.addSubview(image11)
        image11.translatesAutoresizingMaskIntoConstraints = false
        
        image11.topAnchor.constraint(equalTo: viewCovid.bottomAnchor, constant: 32).isActive = true
        image11.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        image11.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        image11.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        
        view.addSubview(label11)
        label11.translatesAutoresizingMaskIntoConstraints = false
        
        label11.topAnchor.constraint(equalTo: image11.bottomAnchor, constant: 32).isActive = true
        label11.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        label11.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        label11.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
//        label11.backgroundColor = .red
        
        view.addSubview(button11)
        button11.translatesAutoresizingMaskIntoConstraints = false
        
        button11.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button11.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        button11.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        button11.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
    }

    

}
