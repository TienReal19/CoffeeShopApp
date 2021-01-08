//
//  Header_StackView.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit

struct Header_StackView {
    let nameLabel:  UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mây Linh"
        return label
    }()
    
    private var memberShip:  UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thành viên vàng"
        return label
    }()
    
    let avatar: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "uudai")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    let bell: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bell")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .center
        imageView.tintColor = .black
        return imageView
    }()
    
    let labelStack: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fillEqually
        return s
    }()
    
    let headerStack: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .horizontal
        s.spacing = 10
        s.distribution = .fill
        s.backgroundColor = .white
        s.clipsToBounds = true
        s.layer.cornerRadius = 10
        return s
    }()
    
    func setUpHeaderStackView() {
        labelStack.addArrangedSubview(nameLabel)
        labelStack.addArrangedSubview(memberShip)
        headerStack.addArrangedSubview(avatar)
        headerStack.addArrangedSubview(labelStack)
        headerStack.addArrangedSubview(bell)
        
        NSLayoutConstraint.activate([
            avatar.heightAnchor.constraint(equalToConstant: 60),
            avatar.widthAnchor.constraint(equalToConstant: 60),
            bell.heightAnchor.constraint(equalToConstant: 60),
            bell.widthAnchor.constraint(equalToConstant: 60),
        ])
    }
}
