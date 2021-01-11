//
//  ShippingViewConponents.swift
//  CoffeeShop
//
//  Created by Valerian   on 06/01/2021.
//

import Foundation
import UIKit

struct ShippingViewConponents {
    
    var leftAnchor: NSLayoutConstraint?
    
    lazy var menuContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return view
    }()
    
    lazy var menuBarCollection:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.isScrollEnabled = false
        collectionView.backgroundColor = .systemOrange
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var contentCollectionView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var selectionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .darkGray
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        return view
    }()
    
    lazy var label: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Món ăn được yêu thích"
        lb.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return lb
    }()
    
    lazy var menuCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .darkGray
        return collectionView
    }()
    
    lazy var horizontalCollectionMenuView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    mutating func SetShippingView(view: UIView) {
        view.addSubview(menuContentView)
        view.addSubview(contentCollectionView)
        menuContentView.addSubview(menuBarCollection)
        menuContentView.addSubview(selectionView)
        
        contentCollectionView.addSubview(horizontalCollectionMenuView)
        
        NSLayoutConstraint.activate([
            menuContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            menuContentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            menuContentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            menuBarCollection.topAnchor.constraint(equalTo: menuContentView.topAnchor),
            menuBarCollection.leadingAnchor.constraint(equalTo: menuContentView.leadingAnchor),
            menuBarCollection.trailingAnchor.constraint(equalTo: menuContentView.trailingAnchor),
            menuBarCollection.bottomAnchor.constraint(equalTo: menuContentView.bottomAnchor),
            
            selectionView.bottomAnchor.constraint(equalTo: menuContentView.bottomAnchor),
            selectionView.heightAnchor.constraint(equalToConstant: 4),
            selectionView.widthAnchor.constraint(equalTo: menuContentView.widthAnchor, multiplier: 1/4),
            
            contentCollectionView.topAnchor.constraint(equalTo: menuContentView.bottomAnchor, constant: 5),
            contentCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            contentCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            contentCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            horizontalCollectionMenuView.topAnchor.constraint(equalTo: contentCollectionView.topAnchor),
            horizontalCollectionMenuView.leadingAnchor.constraint(equalTo: contentCollectionView.leadingAnchor),
            horizontalCollectionMenuView.trailingAnchor.constraint(equalTo: contentCollectionView.trailingAnchor),
            horizontalCollectionMenuView.bottomAnchor.constraint(equalTo: contentCollectionView.bottomAnchor),
        ])
        
        self.leftAnchor = selectionView.leftAnchor.constraint(equalTo: menuContentView.leftAnchor)
        self.leftAnchor?.isActive = true
    }
}
