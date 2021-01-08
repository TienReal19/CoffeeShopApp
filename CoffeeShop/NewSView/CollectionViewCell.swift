//
//  CollectionViewCell.swift
//  CoffeeShop
//
//  Created by Valerian   on 05/01/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let imageView: UIImageView = {
        let igV = UIImageView ()
        igV.translatesAutoresizingMaskIntoConstraints = false
        igV.backgroundColor = .black
        igV.image = UIImage(named: "uudai")
        igV.heightAnchor.constraint(equalToConstant: 120).isActive = true
        return igV
    }()
    
    let label: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = "Đây là text"
        lb.textAlignment = .center
        return lb
    }()
    
    let button: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Order ngay", for: .normal)
        bt.titleLabel?.textAlignment = .center
        bt.titleLabel?.font = .systemFont(ofSize: 15)
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 10
        bt.backgroundColor = .systemGray
        bt.heightAnchor.constraint(equalToConstant: 25).isActive = true
        bt.widthAnchor.constraint(equalToConstant: 100).isActive = true
        return bt
    }()
    
    let box : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return view
    }()
    
    let stackView: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = true
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
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            button.centerXAnchor.constraint(equalTo: box.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: box.centerYAnchor),
        ])
    }
}
