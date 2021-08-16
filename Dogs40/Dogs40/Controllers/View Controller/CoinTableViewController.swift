//
//  CoinTableViewController.swift
//  Dogs40
//
//  Created by Delstun McCray on 8/4/21.
//

import UIKit

class CoinTableViewController: UITableViewController {

    var coins: [Coin] = []
    //MARK: - Properties
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoinController.fetchCoin { reult in
            DispatchQueue.main.async {
                switch reult {
                
                case .success(let coins):
                    self.coins = coins
                    self.tableView.reloadData()
                case .failure(let error):
                    print(error)
                }
            }
        }

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coins.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "coinCell", for: indexPath) as? CoinTableViewCell else { return UITableViewCell() }
        let coin = self.coins[indexPath.row]
        
        cell.coin = coin

        return cell
    }
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
