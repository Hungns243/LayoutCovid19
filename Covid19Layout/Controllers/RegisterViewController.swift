//
//  RegisterViewController.swift
//  Covid19Layout
//
//  Created by User on 6/8/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    let registerLabel: UILabel = {
        let register = UILabel()
        
        register.text = "R E G I S T E R"
        register.font = UIFont.boldSystemFont(ofSize: 18)
        register.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        
        return register
    }()
    
    let viewRegister: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .lightGray
        
        return view
    }()
    
    let mobileNumberLabel: UILabel = {
        let mobileLabel = UILabel()
        mobileLabel.text = "Mobile Number"
        mobileLabel.font = UIFont.systemFont(ofSize: 12)
        mobileLabel.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
//        mobileLabel.backgroundColor = .yellow
        
        return mobileLabel
    }()
    
    let mobileTextField: CustomsTextField = {
        let mobileTextField = CustomsTextField("", UIColor.white, .zero)
        return mobileTextField
    }()
    
    let aadhaarNumberLaBel: UILabel = {
        let numberLabel = UILabel()
        numberLabel.text = "Aadhaar Number"
        numberLabel.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        numberLabel.font = UIFont.systemFont(ofSize: 12)
        
        return numberLabel
    }()
    
    let numberTextField: CustomsTextField = {
        let number = CustomsTextField("", UIColor.white, .zero)
        
        return number
    }()
    
    let newPasswordLabel: UILabel = {
        let newpassword = UILabel()
        newpassword.text = "New Password"
        newpassword.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        newpassword.font = UIFont.systemFont(ofSize: 12)
        
        return newpassword
    }()
    
    let newPasswordTextField: CustomsTextField = {
        let newpass = CustomsTextField("", UIColor.white, .zero)
        
        return newpass
    }()
    
    let confirmPassLabel: UILabel = {
        let confirm = UILabel()
        confirm.text = "Confirm Password"
        confirm.textColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        confirm.font = UIFont.systemFont(ofSize: 12)
        return confirm
    }()
    
    let confirmPassTextField: CustomsTextField = {
        let confirmText = CustomsTextField("", UIColor.white, .zero)
        confirmText.placeholder = "ABC"
        
        return confirmText
    }()
    
    let buttonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        
        return button
    }()
    // NSMutablePar
    let ByRegistingLabel: UILabel = {
        let RegistingLabel = UILabel()
        
        
//        RegistingLabel.text = "By registering, you automatically accept the Terms & Policies of COVID - 19 app."
        RegistingLabel.numberOfLines = 0
//        RegistingLabel.backgroundColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 1.00)
        RegistingLabel.font = UIFont.systemFont(ofSize: 12)
        RegistingLabel.textAlignment = .center
        
        //NSMutableAttributedString:   cụm từ đã chọn trong 1 chuỗi
        let text1 = "By registering, you automatically accept the "
        let attribute1 = NSMutableAttributedString(string: text1)
        // doi mau font chu
        attribute1.addAttribute(.foregroundColor, value: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), range: NSRange(location: 0, length: text1.count))
        let text2 = "Terms & Policies"
        let atrribute2 = NSMutableAttributedString(string: text2)
        atrribute2.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue
            , range: NSRange(location: 0, length: text2.count))
        atrribute2.addAttribute(.foregroundColor, value: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), range: NSRange(location: 0, length: text2.count))
        let text3 = " of COVID - 19 app."
        let attribute3 = NSMutableAttributedString(string: text3)
        attribute3.addAttribute(.foregroundColor, value: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), range: NSRange(location: 0, length: text3.count))
        
        attribute1.append(atrribute2)
        attribute1.append(attribute3)
        
        RegistingLabel.attributedText = attribute1
        
//        buttonBR.setAttributedTitle(attributeText, for: .normal)
        
        
        return RegistingLabel
    }()
    
    let buttonLogin: UIButton = {
        let buttonLG = UIButton()
//        buttonLG.setTitle("Have account? Log In", for: .normal)
//        buttonLG.setTitleColor(UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00), for: .normal)
        
        let attributed = NSMutableAttributedString(string: "Have account? Log In")
        attributed.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributed.length))
        attributed.addAttribute(.foregroundColor, value: UIColor(red: 0.24, green: 0.69, blue: 0.43, alpha: 1.00) , range: NSRange(location: 0, length: attributed.length))
        let font = UIFont.systemFont(ofSize: 14)
        attributed.addAttribute(.font, value: font, range: NSRange(location: 0, length: attributed.length))
        
        buttonLG.setAttributedTitle(attributed, for: .normal)
        buttonLG.addTarget(self, action: #selector(onDismiss), for: .touchUpInside)
        
        
        return buttonLG
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor.white
        setupLayout()
        
        
    }
    
    func setupLayout(){
        view.addSubview(registerLabel)
        registerLabel.translatesAutoresizingMaskIntoConstraints = false
        registerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        registerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        registerLabel.widthAnchor.constraint(equalTo: view.widthAnchor
            , multiplier: 0.8).isActive = true
        registerLabel.heightAnchor.constraint(equalToConstant: view.frame.size.height/36).isActive  = true
        registerLabel.textAlignment = .center
        
        view.addSubview(viewRegister)
        viewRegister.translatesAutoresizingMaskIntoConstraints = false

        viewRegister.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewRegister.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30).isActive  = true
        viewRegister.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        viewRegister.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6).isActive = true
        
        view.addSubview(mobileNumberLabel)
        mobileNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mobileNumberLabel.widthAnchor.constraint(equalTo: viewRegister.widthAnchor, multiplier: 0.4).isActive = true
        mobileNumberLabel.heightAnchor.constraint(equalToConstant: view.frame.size.height/30).isActive = true
        mobileNumberLabel.topAnchor.constraint(equalTo: viewRegister.topAnchor, constant: 16).isActive = true
        mobileNumberLabel.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        
        view.addSubview(mobileTextField)
        mobileTextField.translatesAutoresizingMaskIntoConstraints = false
        
        mobileTextField.heightAnchor.constraint(equalToConstant: view.frame.height/22.5).isActive = true
        mobileTextField.topAnchor.constraint(equalTo: mobileNumberLabel.bottomAnchor, constant: 8).isActive = true
        mobileTextField.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        mobileTextField.trailingAnchor.constraint(equalTo: viewRegister.trailingAnchor, constant: -16).isActive = true
        
        view.addSubview(aadhaarNumberLaBel)
        aadhaarNumberLaBel.translatesAutoresizingMaskIntoConstraints = false
        
        aadhaarNumberLaBel.widthAnchor.constraint(equalTo: viewRegister.widthAnchor, multiplier: 0.4).isActive = true
        aadhaarNumberLaBel.heightAnchor.constraint(equalToConstant: view.frame.size.height/30).isActive = true
        aadhaarNumberLaBel.topAnchor.constraint(equalTo: mobileTextField.bottomAnchor, constant: 16).isActive = true
        aadhaarNumberLaBel.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        
        numberTextField.heightAnchor.constraint(equalToConstant: view.frame.height/22.5).isActive = true
        numberTextField.topAnchor.constraint(equalTo: aadhaarNumberLaBel.bottomAnchor, constant: 8).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        numberTextField.trailingAnchor.constraint(equalTo: viewRegister.trailingAnchor, constant: -16).isActive = true
        
        view.addSubview(newPasswordLabel)
        newPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        newPasswordLabel.widthAnchor.constraint(equalTo: viewRegister.widthAnchor, multiplier: 0.4).isActive = true
        newPasswordLabel.heightAnchor.constraint(equalToConstant: view.frame.size.height/30).isActive = true
        newPasswordLabel.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 16).isActive = true
        newPasswordLabel.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        
        view.addSubview(newPasswordTextField)
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        newPasswordTextField.heightAnchor.constraint(equalToConstant: view.frame.height/22.5).isActive = true
        newPasswordTextField.topAnchor.constraint(equalTo: newPasswordLabel.bottomAnchor, constant: 8).isActive = true
        newPasswordTextField.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        newPasswordTextField.trailingAnchor.constraint(equalTo: viewRegister.trailingAnchor, constant: -16).isActive = true
        
        view.addSubview(confirmPassLabel)
        confirmPassLabel.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPassLabel.widthAnchor.constraint(equalTo: viewRegister.widthAnchor, multiplier: 0.4).isActive = true
        confirmPassLabel.heightAnchor.constraint(equalToConstant: view.frame.size.height/30).isActive = true
        confirmPassLabel.topAnchor.constraint(equalTo: newPasswordTextField.bottomAnchor, constant: 16).isActive = true
        confirmPassLabel.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        
        view.addSubview(confirmPassTextField)
        confirmPassTextField.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPassTextField.heightAnchor.constraint(equalToConstant: view.frame.height/22.5).isActive = true
        confirmPassTextField.topAnchor.constraint(equalTo: confirmPassLabel.bottomAnchor, constant: 8).isActive = true
        confirmPassTextField.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        confirmPassTextField.trailingAnchor.constraint(equalTo: viewRegister.trailingAnchor, constant: -16).isActive = true
        
        view.addSubview(buttonRegister)
        buttonRegister.translatesAutoresizingMaskIntoConstraints = false
        
        buttonRegister.heightAnchor.constraint(equalToConstant: view.frame.height/22.5).isActive = true
        buttonRegister.topAnchor.constraint(equalTo: confirmPassTextField.bottomAnchor, constant: 40).isActive = true
        buttonRegister.leadingAnchor.constraint(equalTo: viewRegister.leadingAnchor, constant: 16).isActive = true
        buttonRegister.trailingAnchor.constraint(equalTo: viewRegister.trailingAnchor, constant: -16).isActive = true
        
        view.addSubview(ByRegistingLabel)
        ByRegistingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        ByRegistingLabel.widthAnchor.constraint(equalTo: viewRegister.widthAnchor, multiplier: 0.6).isActive = true
        ByRegistingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ByRegistingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ByRegistingLabel.topAnchor.constraint(equalTo: buttonRegister.bottomAnchor, constant: 32).isActive = true

        
        view.addSubview(buttonLogin)
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        
        buttonLogin.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
        buttonLogin.heightAnchor.constraint(equalToConstant: view.frame.size.height/28).isActive = true
        buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        buttonLogin.topAnchor.constraint(equalTo: ByRegistingLabel.bottomAnchor, constant: 40).isActive = true
        
        
        
    }
    
    @objc func onDismiss(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
