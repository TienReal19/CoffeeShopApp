//
//  Components.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit
import SnapKit

struct Components {
    
    var header_stackView = Header_StackView()
    var middle_stackView = Middle_StackView()
    var collection_StackView1 = CollectionView1_()
    var collection_StackView2 = CollectionView2_()
    var collection_StackView3 = CollectionView3_()
    var footerStack = FooterView()

    let totalStack: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.distribution = .fill
        s.spacing = 20
        return s
    }()
    
    let box : UIView = {
        let view = UIView()
        return view
    }()
    
    let boxTest : UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.snp.makeConstraints { (make) in
            make.height.equalTo(80)
        }
        view.clipsToBounds = true
        view.layer.cornerRadius = 25
        return view
    }()
    
    var scrollView: UIScrollView = {
        let srcView = UIScrollView()
        srcView.backgroundColor = .lightText
        srcView.autoresizingMask = .flexibleHeight
        srcView.translatesAutoresizingMaskIntoConstraints = false
        return srcView
    }()
    
    mutating func setUpView(view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        view.addSubview(box)
        view.addSubview(totalStack)
        view.addSubview(footerStack.footer)
        scrollView.addSubview(totalStack)
        totalStack.addArrangedSubview(header_stackView.headerStack)
        totalStack.addArrangedSubview(middle_stackView.totalMiddleStack)
        totalStack.addArrangedSubview(collection_StackView1.totalCollecionViewStack)
        totalStack.addArrangedSubview(collection_StackView2.totalCollecionViewStack)
        totalStack.addArrangedSubview(collection_StackView3.totalCollecionViewStack)
        totalStack.addArrangedSubview(boxTest)
        
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height + 200)
        
        box.snp.makeConstraints { (make) -> Void in
            make.height.equalTo(50)
            make.leading.trailing.equalTo(totalStack)
            make.top.equalTo(totalStack)
            make.centerX.equalTo(totalStack)
        }
        
        header_stackView.setUpHeaderStackView()
        middle_stackView.setUpMiddleStackView()
        collection_StackView1.setUpCollectionView()
        collection_StackView2.setUpCollectionView()
        collection_StackView3.setUpCollectionView()
        
        scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(-10)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide)
        }

        header_stackView.headerStack.snp.makeConstraints { (make) -> Void in
            make.center.equalTo(box)
            make.leading.equalTo(box).offset(10)
            make.trailing.equalTo(box).offset(-10)
        }
        
        middle_stackView.totalMiddleStack.snp.makeConstraints { (make) in
            make.height.equalTo(100)
        }
        
        collection_StackView1.totalCollecionViewStack.snp.makeConstraints { (make) in
            make.height.equalTo(330)
        }
        
        collection_StackView2.totalCollecionViewStack.snp.makeConstraints { (make) in
            make.height.equalTo(330)
        }
        
        collection_StackView3.totalCollecionViewStack.snp.makeConstraints { (make) in
            make.height.equalTo(330)
        }
        
        collection_StackView1.subStack.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        collection_StackView2.subStack.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        collection_StackView3.subStack.snp.makeConstraints { (make) in
            make.height.equalTo(20)
        }
        
        totalStack.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(scrollView)
            make.width.equalTo(scrollView)
        }
    }
}
