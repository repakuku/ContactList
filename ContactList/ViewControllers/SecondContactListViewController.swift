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
    
}

// MARK: - UITableViewDataSource
extension SecondContactListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            return createCell(
                withIdentifier: "phone",
                text: persons[indexPath.section].phoneNumber,
                image: "phone"
            )
        } else {
            return createCell(
                withIdentifier: "email",
                text: persons[indexPath.section].email,
                image: "tray"
            )
        }

        func createCell(withIdentifier identifier: String, text: String, image: String) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: identifier,
                for: indexPath
            )
            
            var content = cell.defaultContentConfiguration()
            content.text = text
            content.image = UIImage(systemName: image)
            cell.contentConfiguration = content
            
            return cell
        }
    }
}

// MARK: - UITableViewDelegate
extension SecondContactListViewController {
    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        false
    }
}
