//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/28/23.
//

import UIKit

class SecondContactListViewController: UITableViewController {

    // MARK: - Properties
    var persons: [Person]!
    
    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: Contacts.phone.rawValue)
        : UIImage(systemName: Contacts.email.rawValue)
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
