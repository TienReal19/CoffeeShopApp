//
//  LoginTableViewCell.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import UIKit

class LoginTableViewCell: UITableViewCell {
    
    let justImage: UIImageView = {
        let igV = UIImageView ()
        igV.clipsToBounds = true
        igV.layer.cornerRadius = 25
        igV.translatesAutoresizingMaskIntoConstraints = false
        return igV
    }()
    
    let justLabel: UILabel = {
        let lb = UILabel()
        lb.textAlignment = .left
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let justStackView: UIStackView = {
        let s = UIStackView()
        s.translatesAutoresizingMaskIntoConstraints = false
        s.axis = .horizontal
        s.distribution = .fill
        s.spacing = 20
        return s
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpTableViewCell() {
        self.contentView.addSubview(justStackView)
        justStackView.addArrangedSubview(justImage)
        justStackView.addArrangedSubview(justLabel)
        
        self.contentView.backgroundColor = .systemGray4

        NSLayoutConstraint.activate([
            justStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            justStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            justStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            justStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            
            justImage.heightAnchor.constraint(equalTo: justStackView.heightAnchor),
            justImage.widthAnchor.constraint(equalTo: justStackView.heightAnchor),
        ])
    }
}
