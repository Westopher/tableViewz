//
//  AddItemViewController.swift
//  tableViewz
//
//  Created by West Kraemer on 9/5/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    @IBAction func cancel() {
        navigationController?.popViewController(animated: true)
    } 
    
    @IBAction func done() {
        navigationController?.popViewController(animated: true)
        print("Contents of text field: \(textField.text!)")
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}

