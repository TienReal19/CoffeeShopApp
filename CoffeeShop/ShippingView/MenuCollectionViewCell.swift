//
//  MenuCollectionViewCell.swift
//  CoffeeShop
//
//  Created by Valerian   on 06/01/2021.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    lazy var textArray2 = ["Cơm tró","Cơm tró","Cơm tró","Cơm tró","Cơm tró"]
    lazy var textArray3 = ["   50.000 đ","   50.000 đ","   50.000 đ","   50.000 đ","   50.000 đ"]
    
    var components = ShippingViewConponents()
    
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

    func setUpHorizontalCollectionViewCell() {
        self.contentView.addSubview(components.label)
        self.contentView.addSubview(components.menuCollectionView)
        NSLayoutConstraint.activate([
            components.label.topAnchor.constraint(equalTo: self.topAnchor, constant: 3),
            components.label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            components.label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            components.menuCollectionView.topAnchor.constraint(equalTo: components.label.bottomAnchor, constant: 2),
            components.menuCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            components.menuCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            components.menuCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
        components.menuCollectionView.register(FoodCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        components.menuCollectionView.delegate = self
        components.menuCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FoodCollectionViewCell
        cell.label1.text = textArray2[indexPath.row]
        cell.label3.text = textArray3[indexPath.row]
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
