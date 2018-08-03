//
//  EservicesViewController.swift
//  HajjHackathon_eWallet
//
//  Created by Fadhel Alanazi on 20/11/1439 AH.
//  Copyright © 1439 Elee Free. All rights reserved.
//

import UIKit

class EservicesViewController: UIViewController,UITableViewDataSource
{
    @IBOutlet weak var TableView: UITableView!
    
    @IBAction func Buy(_ sender: Any)
    {
        Book(false)
        TableView.reloadData()
        
    }
    
    @IBAction func Book(_ sender: Any)
    {
        Buy(false)
        TableView.reloadData()
    }
    
    let Array: [String] = ["The Ritz.png","brand.gif","Narcissus.png","Four Season.png"]
    
    let Array2: [String] = ["Amazon.jpg","ebay.png","Namshi.png","Souq.png"]
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return Array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let imageName = Array[indexPath.row]
        
        let image = UIImage(named: imageName)
        
        let cell: TableViewCell =  tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TableViewCell
        
        
        cell.pic.image = image
        
        return cell;
    }
    
  
   
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        TableView.reloadData()
       
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    

}
