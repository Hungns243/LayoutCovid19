//
//  Covid6ViewController.swift
//  Covid19Layout
//
//  Created by User on 6/24/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class Covid6ViewController: UIViewController {
    
    let datas = createData6()
    
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
        label1.text = "Do you have any of the following symptoms?"
        label1.numberOfLines = 0
        label1.font = UIFont.systemFont(ofSize: 18)
        label1.backgroundColor = UIColor.backgroundColor()
        return label1
    }()
    
    let tableView: UITableView = {
        let tableview = UITableView()
        tableview.rowHeight = 50
        tableview.showsVerticalScrollIndicator = false
        return tableview
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
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(Covid6TableViewCell.self, forCellReuseIdentifier: "Covid6TableViewCell")
        
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
        label.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        tableView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.backgroundColor()
        
        
        view.addSubview(buttonCheck)
        buttonCheck.translatesAutoresizingMaskIntoConstraints = false
        
        buttonCheck.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCheck.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
        
    }
    
    @objc func onButton(){
        
        let screen = Covid7ViewController()
        screen.modalPresentationStyle = .fullScreen
        self.present(screen, animated: true, completion: nil)
    }
    

   

}


extension Covid6ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Covid6TableViewCell", for: indexPath) as! Covid6TableViewCell
        cell.nameLabel1.text = datas[indexPath.row].nameLabel
        cell.imageBox.image = UIImage(named: datas[indexPath.row].imageBox)
        
        return cell
    }
    
    
}
