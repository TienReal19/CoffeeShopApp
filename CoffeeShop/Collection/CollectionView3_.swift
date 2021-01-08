//
//  CollectionView3_.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit

struct CollectionView3_ {
    let label1: UILabel = {
        let label = UILabel()
        label.text = "#CoffeeLover"
        label.textAlignment = .left
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.text = "..."
        label.textAlignment = .right
        return label
    }()
    
    let subStack: UIStackView = {
        let s = UIStackView()
        s.axis = .horizontal
        s.distribution = .fill
        return s
    }()
    
    let myCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .lightText
        return collectionView
    }()
    
    let totalCollecionViewStack: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.spacing = 10
        s.distribution = .fill
        s.backgroundColor = .lightText
        s.clipsToBounds = true
        s.layer.cornerRadius = 10
        return s
    }()
    
    func setUpCollectionView(){
        totalCollecionViewStack.translatesAutoresizingMaskIntoConstraints = false
        subStack.addArrangedSubview(label1)
        subStack.addArrangedSubview(label2)
        totalCollecionViewStack.addArrangedSubview(subStack)
        totalCollecionViewStack.addArrangedSubview(myCollectionView)
    }
}

