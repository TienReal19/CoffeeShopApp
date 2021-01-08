//
//  OrderViewController.swift
//  CoffeeShop
//
//  Created by Valerian   on 06/01/2021.
//

import UIKit

class OrderViewController: UIViewController {
    
    lazy var textArray = ["Phổ biến","Đồ uống","Thức ăn nhẹ","Tìm kiếm"]
    
    var shippingView = ShippingViewConponents()

    override func viewDidLoad() {
        super.viewDidLoad()
        shippingView.SetShippingView(view: view)
        shippingView.menuBarCollection.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        shippingView.horizontalCollectionMenuView.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        shippingView.menuBarCollection.dataSource = self
        shippingView.menuBarCollection.delegate = self
        shippingView.horizontalCollectionMenuView.dataSource = self
        shippingView.horizontalCollectionMenuView.delegate = self
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.shippingView.leftAnchor?.constant = scrollView.contentOffset.x / 4
    }
}

extension OrderViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView  == self.shippingView.menuBarCollection {
            return 4
        } else if collectionView  == self.shippingView.horizontalCollectionMenuView {
            return 4
        } else {
            return 5
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
        
        if collectionView  == self.shippingView.menuBarCollection {
            cell.label1.text = "\(textArray[indexPath.row])"
            cell.setUpcollectionViewCell()
        }  else {
            cell.setUpHorizontalCollectionViewCell()
            cell.backgroundColor = .white
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let x = CGFloat(indexPath.item) * shippingView.menuContentView.frame.width / 4
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveEaseInOut, animations: {
            self.shippingView.leftAnchor?.constant = x
            self.shippingView.selectionView.layoutIfNeeded()
        }, completion: nil)
        
        let indexpath = indexPath.item
        self.shippingView.horizontalCollectionMenuView.scrollToItem(at: IndexPath(item: indexpath, section: 0), at: .right, animated: true)
    }
}

extension OrderViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView  == self.shippingView.menuBarCollection {
            return (CGSize(width: self.shippingView.menuContentView.frame.width / 4, height: self.shippingView.menuBarCollection.frame.height))
        } else {
            return (CGSize(width: self.shippingView.horizontalCollectionMenuView.frame.width , height: self.shippingView.horizontalCollectionMenuView.frame.height))
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView  == self.shippingView.menuBarCollection {
            return 0
        } else {
            return 0
        }
    }
}
