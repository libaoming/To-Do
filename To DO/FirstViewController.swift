//
//  FirstViewController.swift
//  To DO
//
//  Created by 李宝明 on 16/8/23.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    var itemArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let itemsObj = UserDefaults.standard.object(forKey: "items")
        
        if let itemArraytemp = itemsObj as? [String] {
            
            itemArray = itemArraytemp
        }
        
        tableview.reloadData()

    }
    
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = "\(itemArray[indexPath.row])"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            itemArray.remove(at: indexPath.row)
            tableview.reloadData()
            UserDefaults.standard.set(itemArray, forKey: "items")
        }
    }

}

