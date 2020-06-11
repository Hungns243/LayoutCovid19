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
        
        return image
    }()
    
    let avatarImage: UIImageView{
        let
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
    }
    
    func setupLayout(){
        
        view.addSubview(viewSmall)
        viewSmall.translatesAutoresizingMaskIntoConstraints = false
        
        viewSmall.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        viewSmall.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        viewSmall.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        viewSmall.backgroundColor = UIColor(red: 0.53, green: 0.81, blue: 0.65, alpha: 1.00)
    }
    

    
}
