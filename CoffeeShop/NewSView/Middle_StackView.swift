//
//  Middle_StackView.swift
//  CoffeeShop
//
//  Created by Valerian   on 05/01/2021.
//

import Foundation
import UIKit

struct Middle_StackView {
    
    let ImageView1: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "uudai")
        imageview.clipsToBounds = true
        imageview.layer.cornerRadius = 10
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        return imageview
    }()
    
    let ImageView2: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "uudai")
        imageview.clipsToBounds = true
        imageview.layer.cornerRadius = 10
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        return imageview
    }()
    
    let ImageView3: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "uudai")
        imageview.clipsToBounds = true
        imageview.layer.cornerRadius = 10
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        return imageview
    }()
    
    let ImageView4: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "uudai")
        imageview.clipsToBounds = true
        imageview.layer.cornerRadius = 10
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.heightAnchor.constraint(equalToConstant: 70).isActive = true
        return imageview
    }()
    
    let label1: UILabel = {
        let label = UILabel()
        label.text = "Tích Điểm"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()

    let label2: UILabel = {
        let label = UILabel()
        label.text = "Giao Hàng"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.text = "Coupon"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let label4: UILabel = {
        let label = UILabel()
        label.text = "Rewards"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subStack1: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let subStack2: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let subStack3: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let subStack4: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let totalMiddleStack: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .horizontal
        s.distribution = .fillEqually
        s.clipsToBounds = true
        s.layer.cornerRadius = 10
        s.spacing = 10
        s.backgroundColor = .white
        return s
    }()
    
    func setUpMiddleStackView() {
        subStack1.addArrangedSubview(ImageView1)
        subStack1.addArrangedSubview(label1)
        subStack2.addArrangedSubview(ImageView2)
        subStack2.addArrangedSubview(label2)
        subStack3.addArrangedSubview(ImageView3)
        subStack3.addArrangedSubview(label3)
        subStack4.addArrangedSubview(ImageView4)
        subStack4.addArrangedSubview(label4)
        totalMiddleStack.addArrangedSubview(subStack1)
        totalMiddleStack.addArrangedSubview(subStack2)
        totalMiddleStack.addArrangedSubview(subStack3)
        totalMiddleStack.addArrangedSubview(subStack4)
    }
}
