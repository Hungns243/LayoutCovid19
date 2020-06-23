//
//  Covid3ViewController.swift
//  Covid19Layout
//
//  Created by User on 6/17/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class Covid3ViewController: UIViewController {
    
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
    
    let label: UILabel = {
        let label1 = UILabel()
        label1.text = "What is your age?"
        return label1
    }()
    
    let textField: UITextField = {
        let textfield = UITextField()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
        textfield.leftView = view
//        view.backgroundColor = .green
        textfield.leftViewMode = UITextField.ViewMode.always
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
//        button.backgroundColor = .red
        textfield.rightView = button
        textfield.rightViewMode = UITextField.ViewMode.always
        button.setImage(UIImage(named: "iconplus"), for: .normal)
        
        
        
        textfield.backgroundColor = .white
        textfield.layer.cornerRadius = 4
        textfield.layer.masksToBounds = true
        textfield.placeholder = "Enter age"
        
        
        return textfield
    }()
    
    
    
    let buttonCheck: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.fontColor()
        let image = UIImage(named: "check")
        button.frame = CGRect(x: 50, y: 50, width: 30, height: 30)
        button.setImage(image, for: .normal)
        button.addTarget(self, action: #selector(onButton), for: .touchUpInside)
        
        // đổi màu icon trong button.
        button.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        button.tintColor = .white
        
        return button
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        buttonCheck.layer.cornerRadius = buttonCheck.bounds.width/2
        buttonCheck.layer.masksToBounds = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        
        view.backgroundColor = UIColor.backgroundColor()
        
        
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
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.topAnchor.constraint(equalTo: viewCovid.bottomAnchor, constant: 32).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.backgroundColor = UIColor.backgroundColor()
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.leadingAnchor.constraint(equalTo: viewCovid.leadingAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: viewCovid.trailingAnchor).isActive = true
        
        
        
        
        view.addSubview(buttonCheck)
        buttonCheck.translatesAutoresizingMaskIntoConstraints = false
        
        buttonCheck.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCheck.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
        
    }
    
    @objc func onButton(){
        let screen = Covid4CollectionViewController()
        screen.modalPresentationStyle = .fullScreen
        self.present(screen, animated: true, completion: nil)
        
    }
    
    
    
    
}
