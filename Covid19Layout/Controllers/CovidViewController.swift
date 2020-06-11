//
//  CovidViewController.swift
//  Covid19Layout
//
//  Created by User on 6/5/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class CovidViewController: UIViewController {
    let covidImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Iconyt")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let covid19Label: UILabel = {
        let covid19 = UILabel()
        covid19.translatesAutoresizingMaskIntoConstraints = false
        covid19.text = "COVID - 19"
        covid19.font = UIFont.boldSystemFont(ofSize: 24)
        covid19.textColor = UIColor.fontColor()
        return covid19
    }()
    let testBookingLabel: UILabel = {
        let testBooking = UILabel()
        testBooking.translatesAutoresizingMaskIntoConstraints = false
//        testBooking.text = "Test booking app"
        testBooking.font = UIFont.systemFont(ofSize: 12)
        return testBooking
    }()
    
    var time: Timer!
    var n: Int = 0
    var count: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(covidImageView)
        view.addSubview(covid19Label)
        view.addSubview(testBookingLabel)
        view.backgroundColor = UIColor.backgroundColor()
        
        setupLayout()
        
        //khoi tao timer
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(runLoop), userInfo: nil, repeats: true)
        n = 3
        count = 3

    }
    
    func setupLayout(){
        
        covidImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        covidImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60).isActive = true
        covidImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6).isActive = true
        covidImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25).isActive = true
        
        covid19Label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        covid19Label.topAnchor.constraint(equalTo: covidImageView.bottomAnchor, constant: 20).isActive = true
        
        testBookingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        testBookingLabel.topAnchor.constraint(equalTo: covid19Label.bottomAnchor, constant: 40).isActive = true
        
    }
    @objc func runLoop(){
        count -= 1
        print(count)
        
        if count < 1 {
            time.invalidate()
        }
        if count == 0 {
            let a = LoginViewController()
            a.modalPresentationStyle = .fullScreen
            self.present(a, animated: true, completion: nil)
        }
        
        
    }
    
}
