//
//  ViewController.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import UIKit

class NewsViewController: UIViewController {
    
    var newComponent = NewsComponents()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        newComponent.setUpView(view: view)
        newComponent.collection_StackView1.myCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        newComponent.collection_StackView2.myCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        newComponent.collection_StackView3.myCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        newComponent.collection_StackView1.myCollectionView.dataSource = self
        newComponent.collection_StackView1.myCollectionView.delegate = self
        newComponent.collection_StackView2.myCollectionView.dataSource = self
        newComponent.collection_StackView2.myCollectionView.delegate = self
        newComponent.collection_StackView3.myCollectionView.dataSource = self
        newComponent.collection_StackView3.myCollectionView.delegate = self
    }
}

extension NewsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.newComponent.collection_StackView1.myCollectionView {
            return 5
        } else if collectionView == self.newComponent.collection_StackView2.myCollectionView {
            return 5
        } else {
            return 5
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        if collectionView == self.newComponent.collection_StackView1.myCollectionView {
            cell.setUpCollectionViewCell()
            cell.backgroundColor = .lightGray
            cell.clipsToBounds = true
            cell.layer.cornerRadius = 10
        } else if collectionView == self.newComponent.collection_StackView2.myCollectionView  {
            cell.setUpCollectionViewCell()
            cell.button.setTitle("Chi Tiết", for: .normal)
            cell.backgroundColor = .lightGray
            cell.clipsToBounds = true
            cell.layer.cornerRadius = 10
        } else {
            cell.setUpCollectionViewCell()
            cell.button.setTitle("Tìm hiểu", for: .normal)
            cell.backgroundColor = .lightGray
            cell.clipsToBounds = true
            cell.layer.cornerRadius = 10
        }
        return cell
    }
}

extension NewsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var width : CGFloat = 0.0
        var height : CGFloat = 0.0
        if collectionView == self.newComponent.collection_StackView1.myCollectionView {
            height = self.newComponent.collection_StackView1.myCollectionView.frame.height
            width = self.newComponent.collection_StackView1.myCollectionView.frame.width / 2.5
        } else if collectionView == self.newComponent.collection_StackView2.myCollectionView {
            height = self.newComponent.collection_StackView2.myCollectionView.frame.height
            width = self.newComponent.collection_StackView2.myCollectionView.frame.width / 2.5
        } else {
            height = self.newComponent.collection_StackView3.myCollectionView.frame.height
            width = self.newComponent.collection_StackView3.myCollectionView.frame.width / 2.5
        }
        return CGSize(width: width, height: height)
    }
}
