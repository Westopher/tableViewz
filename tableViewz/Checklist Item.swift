//
//  Checklist Item.swift
//  tableViewz
//
//  Created by West Kraemer on 8/24/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
