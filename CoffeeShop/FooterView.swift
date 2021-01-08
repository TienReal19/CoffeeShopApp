//
//  FooterView.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit

struct FooterView {
    let ImageView1: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "tichdiem")
        return imageview
    }()
    
    let ImageView2: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "tichdiem")
        return imageview
    }()
    
    let ImageView3: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "tichdiem")
        return imageview
    }()
    
    let ImageView4: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "tichdiem")
        return imageview
    }()
    
    let button1: UIButton = {
        let bt = UIButton()
        bt.setTitle("Tin tức", for: .normal)
        bt.titleLabel?.textAlignment = .center
        return bt
    }()
    
    let button2: UIButton = {
        let bt = UIButton()
        bt.setTitle("Shipping", for: .normal)
        bt.titleLabel?.textAlignment = .center
        return bt
    }()
    
    let button3: UIButton = {
        let bt = UIButton()
        bt.setTitle("Cửa hàng", for: .normal)
        bt.titleLabel?.textAlignment = .center
        return bt
    }()
    
    let button4: UIButton = {
        let bt = UIButton()
        bt.setTitle("Tài khoản", for: .normal)
        bt.titleLabel?.textAlignment = .center
        return bt
    }()
    
    let subStack1: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let subStack2: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let subStack3: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let subStack4: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.spacing = 5
        s.distribution = .fill
        return s
    }()
    
    let footer: UIStackView = {
        let s = UIStackView()
        s.axis = .horizontal
        s.distribution = .fillEqually
        s.clipsToBounds = true
        s.layer.cornerRadius = 10
        s.spacing = 10
        s.backgroundColor = .white
        return s
    }()
    
    func setUpStackView() {
        subStack1.addArrangedSubview(ImageView1)
        subStack1.addArrangedSubview(button1)
        subStack2.addArrangedSubview(ImageView2)
        subStack2.addArrangedSubview(button2)
        subStack3.addArrangedSubview(ImageView3)
        subStack3.addArrangedSubview(button3)
        subStack4.addArrangedSubview(ImageView4)
        subStack4.addArrangedSubview(button4)
        footer.addArrangedSubview(subStack1)
        footer.addArrangedSubview(subStack2)
        footer.addArrangedSubview(subStack3)
        footer.addArrangedSubview(subStack4)
    }
}
