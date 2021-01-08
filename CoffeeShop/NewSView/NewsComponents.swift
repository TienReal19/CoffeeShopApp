//
//  NewsComponents.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit

struct NewsComponents {
    
    var header_stackView = Header_StackView()
    var middle_stackView = Middle_StackView()
    var collection_StackView1 = CollectionView1_()
    var collection_StackView2 = CollectionView2_()
    var collection_StackView3 = CollectionView3_()

    var scrollView: UIScrollView = {
        let srcView = UIScrollView()
        srcView.translatesAutoresizingMaskIntoConstraints = false
        srcView.autoresizingMask = .flexibleHeight
        srcView.showsVerticalScrollIndicator = false
        return srcView
    }()
    
    lazy var contentView: UIView = {
        let view  = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var boxTest: UIView = {
        let view  = UIView()
        view.backgroundColor = .systemGray3
        view.clipsToBounds = true
        view.layer.cornerRadius = 25
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    mutating func setUpView(view: UIView) {
        view.addSubview(header_stackView.headerStack)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(middle_stackView.totalMiddleStack)
        contentView.addSubview(collection_StackView1.totalCollecionViewStack)
        contentView.addSubview(collection_StackView2.totalCollecionViewStack)
        contentView.addSubview(collection_StackView3.totalCollecionViewStack)
        contentView.addSubview(boxTest)
        
        header_stackView.setUpHeaderStackView()
        middle_stackView.setUpMiddleStackView()
        collection_StackView1.setUpCollectionView()
        collection_StackView2.setUpCollectionView()
        collection_StackView3.setUpCollectionView()
        
        NSLayoutConstraint.activate([
            header_stackView.headerStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            header_stackView.headerStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            header_stackView.headerStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            header_stackView.headerStack.heightAnchor.constraint(equalToConstant: 60),
            
            scrollView.topAnchor.constraint(equalTo: header_stackView.headerStack.bottomAnchor, constant: 5),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 5),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, constant: 440),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            middle_stackView.totalMiddleStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            middle_stackView.totalMiddleStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            middle_stackView.totalMiddleStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            collection_StackView1.totalCollecionViewStack.topAnchor.constraint(equalTo: middle_stackView.totalMiddleStack.bottomAnchor, constant: 10),
            collection_StackView1.totalCollecionViewStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collection_StackView1.totalCollecionViewStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            collection_StackView2.totalCollecionViewStack.topAnchor.constraint(equalTo: collection_StackView1.totalCollecionViewStack.bottomAnchor, constant: 10),
            collection_StackView2.totalCollecionViewStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collection_StackView2.totalCollecionViewStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            collection_StackView3.totalCollecionViewStack.topAnchor.constraint(equalTo: collection_StackView2.totalCollecionViewStack.bottomAnchor, constant: 10),
            collection_StackView3.totalCollecionViewStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collection_StackView3.totalCollecionViewStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

            
            boxTest.topAnchor.constraint(equalTo: collection_StackView3.totalCollecionViewStack.bottomAnchor,constant: 10),
            boxTest.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            boxTest.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            boxTest.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
}
