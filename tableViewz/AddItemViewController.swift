//
//  AddItemViewController.swift
//  tableViewz
//
//  Created by West Kraemer on 9/5/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    } 
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
    }
}

