//
//  HomepageViewController.swift
//  Covid19Layout
//
//  Created by User on 6/11/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {
    
    let viewSmall: UIView = {
        let view1 = UIView()
        
        return view1
    }()
    
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
    
    let labelViewSmall: UILabel = {
        let label = UILabel()
        label.text = "What are you looking for? "
//        label.font = UIFont.systemFont(ofSize: 24)
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = UIColor.fontColor()
        
//        label.numberOfLines = 0  xuống dòng
        
        
        return label
    }()
    
    let tableView1: UITableView = {
        let tableview = UITableView()
        tableview.backgroundColor = UIColor.backgroundColor()
        
        return tableview
    }()
    
    let datas = createData()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        view.backgroundColor = UIColor.backgroundColor()
        
        tableView1.delegate = self
        tableView1.dataSource = self
        
        tableView1.register(CustomsTableViewCell.self, forCellReuseIdentifier: "CustomsTableViewCell")
        tableView1.rowHeight = 140
        tableView1.separatorStyle = .none  // ẩn thanh gạch chân
        tableView1.showsVerticalScrollIndicator = false
        
        
    }
    // bo viền tròn avataImage
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        avatarImage.layer.cornerRadius = avatarImage.bounds.height/2
        avatarImage.layer.masksToBounds = true
    }
    func setupLayout(){
        
        view.addSubview(viewSmall)
        viewSmall.translatesAutoresizingMaskIntoConstraints = false
        
        viewSmall.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        viewSmall.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        viewSmall.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewSmall.backgroundColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 1.00)
        
        view.addSubview(avatarImage)
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
        
        avatarImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        avatarImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        avatarImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true

        
        view.addSubview(menuImage)
        menuImage.translatesAutoresizingMaskIntoConstraints = false
        
        menuImage.heightAnchor.constraint(equalToConstant: view.frame.size.height/40).isActive = true
        menuImage.widthAnchor.constraint(equalToConstant: view.frame.size.width/20).isActive = true
        menuImage.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor, constant: 0).isActive = true
        menuImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true

        
        view.addSubview(labelViewSmall)
        labelViewSmall.translatesAutoresizingMaskIntoConstraints = false
        
        labelViewSmall.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        labelViewSmall.heightAnchor.constraint(equalToConstant: view.frame.size.height/18).isActive = true
        labelViewSmall.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 48).isActive = true
        labelViewSmall.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        
        view.addSubview(tableView1)
        tableView1.translatesAutoresizingMaskIntoConstraints = false
        
//        tableView1.topAnchor.constraint(equalTo: viewSmall.bottomAnchor, constant: 32).isActive = true
        tableView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        tableView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
//        tableView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56).isActive = true
        tableView1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 120).isActive = true
        tableView1.heightAnchor.constraint(equalToConstant: view.frame.size.height/1.6).isActive = true
        tableView1.backgroundColor = .red
        
    }
    

    
}


extension HomepageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomsTableViewCell", for: indexPath) as! CustomsTableViewCell
        cell.label.text = datas[indexPath.row].title
        return cell
    }
    
    
}
