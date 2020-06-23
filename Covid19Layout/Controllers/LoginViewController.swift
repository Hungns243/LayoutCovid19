//
//  LoginViewController.swift
//  Covid19Layout
//
//  Created by User on 6/5/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginLabel: UILabel = {
        let login = UILabel()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.text = "L O G I N"
        login.font = UIFont.boldSystemFont(ofSize: 18)
        login.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return login
        
    }()
    
    let viewSmall: UIView = {
        let view1 = UIView()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        return view1
    }()
    
    let mobileNumberLabel: UILabel = {
        let mobileNumber = UILabel()
        mobileNumber.translatesAutoresizingMaskIntoConstraints = false
        mobileNumber.text = "Mobile Number"
        mobileNumber.font = UIFont.systemFont(ofSize: 12)
        mobileNumber.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        return mobileNumber
    }()
    
    let textFieldNumber: CustomsTextField = {
        let textField = CustomsTextField("", UIColor.white, .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.backgroundColor = .white
//        textField.layer.cornerRadius = 8
        textField.isSecureTextEntry = false
        return textField
    }()
    
    let textFieldPassword: CustomsTextField = {
        let textField1 = CustomsTextField("", UIColor.white, .zero)
        textField1.translatesAutoresizingMaskIntoConstraints = false
//        textField1.backgroundColor = .white
//        textField1.layer.cornerRadius = 8
        textField1.isSecureTextEntry = true
        return textField1
    }()
    
    let passwordLabel: UILabel = {
        
        let password = UILabel()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.text = "Password"
        password.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        password.font = UIFont.systemFont(ofSize: 12)
//        password.backgroundColor = .blue
        return password
    }()
    
    let forgotLabel: UILabel = {
        let forgot = UILabel()
        forgot.translatesAutoresizingMaskIntoConstraints = false
        forgot.text = "Forgot?"
        forgot.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        forgot.font = UIFont.systemFont(ofSize: 12)
//        forgot.backgroundColor = .yellow
        return forgot
    }()
    
    let buttonLogin: CustomsButton = {
        let button = CustomsButton("Login", UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), .zero)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        button.addTarget(self, action: #selector(onLogin), for: .touchUpInside)
        
       
        
        
        return button
        
        
    }()
    
    
    
    
    
    let registerButton: UIButton = {
        let register = UIButton()
        register.translatesAutoresizingMaskIntoConstraints = false
        
        register.addTarget(self, action: #selector(onRegister), for: .touchUpInside)
        
        

//        register.setTitle("New user? Register Here", for: .normal)
//        register.setTitleColor(UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), for: .normal)
        
        let attributedText = NSMutableAttributedString(string: "New user? Register Here" )
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributedText.length))
        attributedText.addAttribute(.foregroundColor, value: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), range: NSRange(location: 0, length: attributedText.length))
        let font = UIFont.systemFont(ofSize: 14)
        attributedText.addAttribute(.font, value: font, range: NSRange(location: 0, length: attributedText.length))
//        let paragraphStyle = NSMutableParagraphStyle()
//        paragraphStyle.alignment = .center
//        paragraphStyle.firstLineHeadIndent = 10.0
//        attributedText.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedText.length))
        
        register.setAttributedTitle(attributedText, for: .normal)
        
        
        
        return register
    }()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginLabel)
        view.addSubview(viewSmall)
        view.addSubview(mobileNumberLabel)
        view.addSubview(textFieldNumber)
        view.addSubview(passwordLabel)
        view.addSubview(forgotLabel)
        view.addSubview(textFieldPassword)
        view.addSubview(registerButton)
        view.addSubview(buttonLogin)
        
//        view.backgroundColor = UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)
        view.backgroundColor = UIColor.backgroundColor()
        setupLayout()
        
//        let attributeString = NSMutableAttributedString(string: "hello", attributes: .some(attrlist))
//        registerButton.setAttributedTitle(attributeString, for: .normal)
        
        
    }
    
    func setupLayout(){
        loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        loginLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        loginLabel.heightAnchor.constraint(equalToConstant: view.frame.size.height/36).isActive = true
        loginLabel.textAlignment = .center
        
        
        viewSmall.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        viewSmall.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        viewSmall.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        viewSmall.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4).isActive = true
        
        mobileNumberLabel.topAnchor.constraint(equalTo: viewSmall.topAnchor, constant: -7).isActive = true
        mobileNumberLabel.leadingAnchor.constraint(equalTo: viewSmall.leadingAnchor, constant: 14).isActive = true
        mobileNumberLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        mobileNumberLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        textFieldNumber.topAnchor.constraint(equalTo: mobileNumberLabel.bottomAnchor, constant: 7).isActive = true
        textFieldNumber.heightAnchor.constraint(equalToConstant: view.frame.size.height/18).isActive = true
        textFieldNumber.leadingAnchor.constraint(equalTo: viewSmall.leadingAnchor, constant: 14).isActive = true
        textFieldNumber.trailingAnchor.constraint(equalTo: viewSmall.trailingAnchor, constant: -14).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: textFieldNumber.bottomAnchor, constant: 14).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: viewSmall.leadingAnchor, constant: 14).isActive = true
        passwordLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        forgotLabel.topAnchor.constraint(equalTo: textFieldNumber.bottomAnchor, constant: 14).isActive = true
        forgotLabel.trailingAnchor.constraint(equalTo: viewSmall.trailingAnchor, constant: -14).isActive = true
        forgotLabel.widthAnchor.constraint(equalToConstant: 70).isActive = true
        forgotLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        textFieldPassword.leadingAnchor.constraint(equalTo: viewSmall.leadingAnchor, constant: 14).isActive = true
        textFieldPassword.trailingAnchor.constraint(equalTo: viewSmall.trailingAnchor, constant: -14).isActive = true
        textFieldPassword.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 7).isActive = true
        textFieldPassword.heightAnchor.constraint(equalToConstant: view.frame.size.height/18).isActive = true
        
        buttonLogin.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 56).isActive = true
        buttonLogin.leadingAnchor.constraint(equalTo: viewSmall.leadingAnchor, constant: 14).isActive = true
        buttonLogin.trailingAnchor.constraint(equalTo: viewSmall.trailingAnchor, constant: -14).isActive = true
        buttonLogin.heightAnchor.constraint(equalToConstant: view.frame.size.height/18).isActive = true
        
        registerButton.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 42).isActive = true
        registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        registerButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        
    }
    
    @objc func onRegister(){
        let a = RegisterViewController()
        a.modalPresentationStyle = .fullScreen
        present(a, animated: true, completion: nil)
    }
    
    @objc func onLogin(){
        let login = HomepageViewController()
        login.modalPresentationStyle = .fullScreen
        present(login, animated: true, completion: nil)
    }
    
    
}
