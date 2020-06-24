//
//  Covid10ViewController.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class Covid10ViewController: UIViewController {
    
    let datas = createData10()
    
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
        label1.text = "In the last two weeks have you worked or volunteered in a hospital, emergency room, clinic, medical office, long-term care facility or nursing home, ambulance service, first responder services, or any health care setting or taken care of patients as a student or part of your work?"
        
        label1.numberOfLines = 0
        label1.font = UIFont.systemFont(ofSize: 18)
        label1.backgroundColor = UIColor.backgroundColor()
        return label1
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return view
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
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(Covid10CollectionViewCell.self, forCellWithReuseIdentifier: "Covid10CollectionViewCell")
        
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
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.topAnchor.constraint(equalTo: viewCovid.bottomAnchor, constant: 32).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
        label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2).isActive = true
        
        
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        collectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        collectionView.backgroundColor = UIColor.backgroundColor()
        
        view.addSubview(buttonCheck)
        buttonCheck.translatesAutoresizingMaskIntoConstraints = false
        
        buttonCheck.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCheck.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
    }
    @objc func onButton(){
        
                   let screen = Covid11ViewController()
                   screen.modalPresentationStyle = .fullScreen
                   self.present(screen, animated: true, completion: nil)
        
    }
    
    
    
    
}

extension Covid10ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        datas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Covid10CollectionViewCell", for: indexPath) as! Covid10CollectionViewCell
        
        cell.image.image = UIImage(named: datas[indexPath.row].imageIcon)
        cell.label.text = datas[indexPath.row].nameLabel
        
        return cell
    }
    
    
}

extension Covid10ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width/2 - 10
        let height = collectionView.bounds.height/2 - 10
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        20
    }
    
    // bam vao view tronf collectionview de chuyen man:
    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //        <#code#>
    //    }
}

