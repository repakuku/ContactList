//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/27/23.
//

import UIKit

final class ContactListViewController: UITableViewController {

    // MARK: - Properties
    var persons: [Person]!

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let personDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        personDetailsVC.person = persons[indexPath.row]
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
