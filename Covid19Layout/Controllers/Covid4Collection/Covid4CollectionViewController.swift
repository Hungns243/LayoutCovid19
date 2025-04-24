//
//  Covid4CollectionViewController.swift
//  Covid19Layout


import UIKit

class Covid4CollectionViewController: UIViewController {
    
    let datas4 = createData4()
    
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
        label1.text = "What is your gender?"
        return label1
    }()
    
    let buttonCheck: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.fontColor()
        let image = UIImage(named: "check")
        button.frame = CGRect(x: 50, y: 50, width: 30, height: 30)
        button.setImage(image, for: .normal)
        button.addTarget(Covid4CollectionViewController.self, action: #selector(onButton), for: .touchUpInside)
        
        // đổi màu icon trong button.
        button.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate), for: .normal)
        button.tintColor = .white
        
        return button
    }()
    
    let collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        return collection
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        buttonCheck.layer.cornerRadius = buttonCheck.bounds.width/2
        buttonCheck.layer.masksToBounds = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(Covid4CollectionViewCell.self, forCellWithReuseIdentifier: "Covid4CollectionViewCell")
        
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
        label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.backgroundColor = UIColor.backgroundColor()
        
        view.addSubview(collectionview)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        
        collectionview.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 24).isActive = true
        collectionview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        collectionview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        collectionview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        collectionview.backgroundColor = UIColor.backgroundColor()
        
        
        view.addSubview(buttonCheck)
        buttonCheck.translatesAutoresizingMaskIntoConstraints = false
        
        buttonCheck.widthAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.heightAnchor.constraint(equalToConstant: 60).isActive = true
        buttonCheck.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCheck.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        
        
    }
    
    @objc func onButton(){
        let screen = Covid5ViewController()
        screen.modalPresentationStyle = .fullScreen
        self.present(screen, animated: true, completion: nil)
        
    }
    

   

}


extension Covid4CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        datas4.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Covid4CollectionViewCell", for: indexPath) as! Covid4CollectionViewCell
        
        cell.image.image = UIImage(named: datas4[indexPath.row].imageIcon)
        cell.label.text = datas4[indexPath.row].nameLabel
        
        return cell
    }
    
    
}

extension Covid4CollectionViewController: UICollectionViewDelegateFlowLayout {
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
