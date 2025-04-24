//
//  TestRequestViewController.swift
//  Covid19Layout
//
//  Created by User on 6/12/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class TestRequestViewController: UIViewController {
    
    let datas1 = createData1()
    
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
        label1.text = "Who are you requesting a test for?"
        return label1
    }()
    
    // khởi tạo collectionView:
    let collectionView1: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        return collectionView
    }()
    
    let buttonCheck: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.fontColor()
        let image = UIImage(named: "check")
        button.frame = CGRect(x: 50, y: 50, width: 30, height: 30)
        button.setImage(image, for: .normal)
        button.addTarget(TestRequestViewController.self, action: #selector(onButton), for: .touchUpInside)
        
        // đổi màu icon trong button.
        button.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        button.tintColor = .white
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView1.delegate = self
        collectionView1.dataSource = self
        
        collectionView1.register(CustomsCollectionViewCell.self, forCellWithReuseIdentifier: "CustomsCollectionViewCell")
        
        view.backgroundColor = UIColor.backgroundColor()
        
        setupLayout()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        buttonCheck.layer.cornerRadius = buttonCheck.bounds.width/2
        buttonCheck.layer.masksToBounds = true
    }
    
    func setupLayout() {
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
//        viewCovid.backgroundColor = UIColor.blue
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.topAnchor.constraint(equalTo: viewCovid.bottomAnchor, constant: 32).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.backgroundColor = UIColor.backgroundColor()
        
        view.addSubview(collectionView1)
        collectionView1.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView1.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24).isActive = true
        collectionView1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        collectionView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        collectionView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        collectionView1.backgroundColor = UIColor.backgroundColor()
        
        view.addSubview(buttonCheck)
        buttonCheck.translatesAutoresizingMaskIntoConstraints = false
        
        buttonCheck.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCheck.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
        
    }
    
    
    
}


extension TestRequestViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  datas1.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: "CustomsCollectionViewCell", for: indexPath) as! CustomsCollectionViewCell
        cell.image.image = UIImage(named: datas1[indexPath.row].imageIcon)
        cell.label.text = datas1[indexPath.row].nameLabel
        
        
        return cell
    }
    @objc func onButton(){
        let vc = CovidView2ViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    
}


extension TestRequestViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width/2 - 10
        let height = collectionView.bounds.height/2 - 10
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}

