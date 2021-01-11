//
//  MenuCollectionViewCell2.swift
//  CoffeeShop
//
//  Created by Valerian   on 11/01/2021.
//

import UIKit

class MenuCollectionViewCell2: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    lazy var textArray2 = ["Coffee","Coffee","Coffee","Coffee","Coffee"]
    lazy var textArray3 = ["   500.000 đ","   500.000 đ","   500.000 đ","   500.000 đ","   500.000 đ"]
    
    var components = ShippingViewConponents()
    var collectionViewHeight: NSLayoutConstraint?

    lazy var label1: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textAlignment = .center
        lb.font = UIFont.systemFont(ofSize: 15)
        lb.textColor = .black
        return lb
    }()
    
    lazy var label2: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textAlignment = .center
        lb.font = UIFont.systemFont(ofSize: 15)
        lb.textColor = .black
        lb.backgroundColor = .black
        return lb
    }()
    
    var scrollView: UIScrollView = {
        let srcView = UIScrollView()
        srcView.translatesAutoresizingMaskIntoConstraints = false
        srcView.autoresizingMask = .flexibleHeight
        srcView.showsVerticalScrollIndicator = false
        srcView.backgroundColor = .systemBlue
        return srcView
    }()
    
    lazy var content: UIView = {
        let view  = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var view: UIView = {
        let box = UIView()
        box.backgroundColor = .red
        return box
    }()
    
    
    func setUpcollectionViewCell() {
        self.contentView.addSubview(label1)
        self.backgroundColor = .systemOrange
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: self.topAnchor),
            label1.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            label1.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            label1.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    func setUpHorizontalCollectionViewCell2() {
        
        self.contentView.addSubview(scrollView)
        self.backgroundColor = .white
        scrollView.addSubview(content)
        content.addSubview(components.label)
        content.addSubview(components.menuCollectionView)
        content.addSubview(view)
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            content.topAnchor.constraint(equalTo: scrollView.topAnchor),
            content.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            content.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            content.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            content.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            content.heightAnchor.constraint(equalTo: scrollView.heightAnchor, constant: 200),
            
            components.label.topAnchor.constraint(equalTo: content.topAnchor),
            components.label.leadingAnchor.constraint(equalTo: content.leadingAnchor, constant: 10),
            components.label.trailingAnchor.constraint(equalTo: content.trailingAnchor, constant: -10),
            
            components.menuCollectionView.topAnchor.constraint(equalTo: components.label.bottomAnchor, constant: 2),
            components.menuCollectionView.leadingAnchor.constraint(equalTo: content.leadingAnchor, constant: 10),
            components.menuCollectionView.trailingAnchor.constraint(equalTo: content.trailingAnchor, constant: -10),
//            components.menuCollectionView.heightAnchor.constraint(equalToConstant: components.menuCollectionView.contentSize.height),
            components.menuCollectionView.bottomAnchor.constraint(equalTo: content.bottomAnchor),
            
//            view.topAnchor.constraint(equalTo: components.menuCollectionView.bottomAnchor, constant: 5),
//            view.leadingAnchor.constraint(equalTo: content.leadingAnchor),
//            view.trailingAnchor.constraint(equalTo: content.trailingAnchor),
//            view.bottomAnchor.constraint(equalTo: content.bottomAnchor),
        ])
        
//        self.collectionViewHeight = components.menuCollectionView.heightAnchor.constraint(equalToConstant: components.menuCollectionView.contentSize.height)
//        collectionViewHeight?.isActive = true
//        components.menuCollectionView.layoutIfNeeded()
        
        components.menuCollectionView.register(FoodCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        components.menuCollectionView.delegate = self
        components.menuCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FoodCollectionViewCell
        cell.label1.text = "Coffee"
        cell.label3.text = "  500.000 VND"
        cell.label4.text = "Add"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return (CGSize(width: components.menuCollectionView.frame.width / 2.1 , height: 250))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

