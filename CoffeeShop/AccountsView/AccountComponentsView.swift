//
//  AccountComponentsView.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import Foundation
import UIKit

struct AccountComponentsView {
    
    let LoginButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("Đăng nhập", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.contentHorizontalAlignment = .left
        bt.titleLabel?.font = .systemFont(ofSize: 15)
        bt.backgroundColor = .systemOrange
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.circle")
        image.contentMode = .center
        image.tintColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 25
        return image
    }()
    
    let stackView: UIStackView = {
        let sV = UIStackView()
        sV.translatesAutoresizingMaskIntoConstraints = false
        sV.backgroundColor = .systemOrange
        sV.distribution = .fill
        sV.axis = .horizontal
        sV.clipsToBounds = true
        sV.layer.cornerRadius = 25
        return sV
    }()
    
    let tableView: UITableView = {
        let tb = UITableView()
        tb.isScrollEnabled = false
        tb.clipsToBounds = true
        tb.layer.cornerRadius = 25
        tb.isUserInteractionEnabled = false
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    func setUpHeader(view: UIView) {
        stackView.addArrangedSubview(avatarImage)
        stackView.addArrangedSubview(LoginButton)
        view.addSubview(stackView)
        view.addSubview(tableView)
        
        view.backgroundColor = .white
        
        self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
        NSLayoutConstraint.activate([
            avatarImage.heightAnchor.constraint(equalToConstant: 60),
            avatarImage.widthAnchor.constraint(equalToConstant: 60),
            LoginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            stackView.heightAnchor.constraint(equalToConstant: 60),
            
            tableView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            tableView.heightAnchor.constraint(equalToConstant: 360)
        ])
    }
}
