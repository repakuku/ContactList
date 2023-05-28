//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/27/23.
//

import UIKit

final class SecondContactListViewController: UITableViewController {

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for person in persons {
            print(person)
        }
    }

}

// MARK: - UITableViewDataSource
extension SecondContactListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
}
