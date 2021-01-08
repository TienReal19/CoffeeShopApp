//
//  AccountViewController.swift
//  CoffeeShop
//
//  Created by Valerian   on 04/01/2021.
//

import UIKit

class AccountViewController: UIViewController {
    
    var headerStackview = AccountComponentsView()
    var data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        headerStackview.setUpHeader(view: view)
        headerStackview.tableView.delegate = self
        headerStackview.tableView.dataSource = self
        headerStackview.tableView.register(LoginTableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension AccountViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.contentArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LoginTableViewCell
        cell.justImage.image = UIImage(named: "\(data.imageArray[indexPath.row])")
        cell.justLabel.text = "\(data.contentArray[indexPath.row])"
        cell.setUpTableViewCell()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
