//
//  MenuComponents.swift
//  CoffeeShop
//
//  Created by Valerian   on 06/01/2021.
//

import Foundation
import UIKit

struct ShippingViewConponents {
    lazy var menuContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemPink
        view.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return view
    }()
    
    mutating func SetShippingView(view: UIView) {
        view.addSubview(menuContentView)
        
        NSLayoutConstraint.activate([
            menuContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10),
            menuContentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10),
            menuContentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
        ])
    }
}
