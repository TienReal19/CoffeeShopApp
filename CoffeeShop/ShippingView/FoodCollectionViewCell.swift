//
//  FoodCollectionViewCell.swift
//  CoffeeShop
//
//  Created by Valerian   on 08/01/2021.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
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
    
    lazy var label3: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textAlignment = .left
        lb.font = UIFont.systemFont(ofSize: 15)
        lb.textColor = .black
        return lb
    }()
    
    lazy var label4: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textAlignment = .center
        lb.font = UIFont.systemFont(ofSize: 15)
        lb.textColor = .black
        return lb
    }()

    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "image")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .brown
        return image
    }()
    
    lazy var stackView1: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = true
        s.axis = .vertical
        s.distribution = .fill
        return s
    }()
    
    lazy var stackView2: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = true
        s.axis = .horizontal
        s.distribution = .fill
        return s
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpFoodCollectionViewCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    func setUpFoodCollectionViewCell() {
        self.contentView.addSubview(stackView1)
        self.backgroundColor = .systemOrange
        self.clipsToBounds = true
        self.layer.cornerRadius = 25
        stackView1.addArrangedSubview(imageView)
        stackView1.addArrangedSubview(label1)
        stackView1.addArrangedSubview(label2)
        stackView1.addArrangedSubview(stackView2)
        stackView2.addArrangedSubview(label3)
        stackView2.addArrangedSubview(label4)
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView1.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView1.topAnchor.constraint(equalTo: self.topAnchor),
            stackView1.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            stackView1.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            imageView.heightAnchor.constraint(equalToConstant: 130),
            
            stackView2.heightAnchor.constraint(equalToConstant: 40),
            
            label4.widthAnchor.constraint(equalToConstant: 50),
            label2.heightAnchor.constraint(equalToConstant: 0.5),
        ])
    }
}
