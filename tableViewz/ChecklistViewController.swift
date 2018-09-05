//
//  ViewController.swift
//  tableViewz
//
//  Created by West Kraemer on 8/23/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController, AddItemViewControllerDelegate {
    func addItemViewControllerDidCancel(_ controller: AddItemViewController) {
        navigationController?.popViewController(animated: true)
    }
    
    func addItemViewController(_ controller: AddItemViewController, didFinishAdding item: ChecklistItem) {
        navigationController?.popViewController(animated: true)
    }
    

    var items: [ChecklistItem]
    
    @IBAction func addItem(_ sender: Any) {
        let newRowIndex = items.count
        
        let item = ChecklistItem()
        item.text = "I am a new row"
        item.checked = false
        
        items.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .bottom)
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem]()
        
        let row0Item = ChecklistItem()
        row0Item.text = "0"
        row0Item.checked = false
        items.append(row0Item)
        
        let row1Item = ChecklistItem()
        row1Item.text = "1"
        row1Item.checked = false
        items.append(row1Item)
        
        let row2Item = ChecklistItem()
        row2Item.text = "2"
        row2Item.checked = false
        items.append(row2Item)
       
        let row3Item = ChecklistItem()
        row3Item.text = "3"
        row3Item.checked = false
        items.append(row3Item)
        
        let row4Item = ChecklistItem()
        row4Item.text = "4"
        row4Item.checked = false
        items.append(row4Item)
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //enabling delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        items.remove(at: indexPath.row)
        
//        To use animation, do it this way
//        let indexPaths = [indexPath]
//        tableView.deleteRows(at: indexPaths, with: .fade)
        
        // Without animation, do it this way.
        tableView.reloadData()
    }
    
    //number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //add and remove check marks
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //establish a cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let item = items[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }

    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        
        if item.checked {
        cell.accessoryType = .checkmark
        } else {
        cell.accessoryType = .none
    }
}
}


