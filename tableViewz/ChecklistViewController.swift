//
//  ViewController.swift
//  tableViewz
//
//  Created by West Kraemer on 8/23/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    var items: [ChecklistItem]
    
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
        // Do any additional setup after loading the view, typically from a nib.
    }
    //number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //add and remove check marks
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.checked = !item.checked
        configureCheckmark(for: cell, at: indexPath)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //establish a cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        let item = items[indexPath.row]
        label.text = item.text
        
        return cell
    }

func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
    let item = items[indexPath.row]
    if item.checked {
        cell.accessoryType = .checkmark
    } else {
        cell.accessoryType = .none
    }
}
}


