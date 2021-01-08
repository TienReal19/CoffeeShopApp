//
//  CollectionViewCell.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let igV = UIImageView ()
        igV.backgroundColor = .black
        igV.image = UIImage(named: "uudai")
        return igV
    }()
    
    let label: UILabel = {
        let lb = UILabel()
        lb.text = "Đây là text"
        lb.textAlignment = .center
        return lb
    }()
    
    let button: UIButton = {
        let bt = UIButton()
        bt.setTitle("Order ngay", for: .normal)
        bt.titleLabel?.textAlignment = .center
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 13
        bt.backgroundColor = .systemGray
        bt.snp.makeConstraints { (make) in
            make.height.equalTo(25)
            make.width.equalTo(100)
        }
        return bt
    }()
    
    let box : UIView = {
        let view = UIView()
        view.snp.makeConstraints { (make) in
            make.height.equalTo(30)
        }
        return view
    }()
    
    let stackView: UIStackView = {
        let s = UIStackView()
        s.axis = .vertical
        s.distribution = .fill
        return s
    }()
    
    func setUpCollectionViewCell() {
        self.contentView.addSubview(stackView)
        box.addSubview(button)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(box)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leftAnchor.constraint(equalTo: self.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: self.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        ])
        
        imageView.snp.makeConstraints { (make) in
            make.height.equalTo(120)
        }
        
        button.snp.makeConstraints { (make) in
            make.leading.equalTo(box).offset(10)
            make.top.equalTo(box).offset(5)
        }
    }
}
