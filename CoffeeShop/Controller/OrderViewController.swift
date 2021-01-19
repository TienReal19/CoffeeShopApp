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
        shippingView.horizontalCollectionMenuView.register(MenuCollectionViewCell2.self, forCellWithReuseIdentifier: "cell2")
        shippingView.horizontalCollectionMenuView.register(MenuCollectionViewCell3.self, forCellWithReuseIdentifier: "cell3")
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
        } else {
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView  == self.shippingView.menuBarCollection {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
            cell.label1.text = "\(textArray[indexPath.row])"
            cell.contentHeightAnchor?.constant = 100
            cell.content.layoutIfNeeded()
            cell.setUpcollectionViewCell()
            return cell
        }  else {
            if indexPath.item == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MenuCollectionViewCell
                cell.setUpHorizontalCollectionViewCell()
                return cell
            } else if indexPath.item == 1 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MenuCollectionViewCell2
                cell.components.label.text = "Coffee  ngon"
                cell.setUpHorizontalCollectionViewCell2()
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! MenuCollectionViewCell3
                cell.components.label.text = "Snack"
                cell.setUpHorizontalCollectionViewCell3()
                return cell
            }
        }
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
