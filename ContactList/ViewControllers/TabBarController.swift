//
//  TabBarController.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/28/23.
//

import UIKit

final class TabBarController: UITabBarController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    // MARK: - Private Methods
    private func transferData() {
        guard let viewControllers else { return }
        guard let contactListVC = viewControllers.first as? ContactListViewController else { return }
        guard let secondContactListVC = viewControllers.last as? SecondContactListViewController else { return }
        
        let persons = Person.getPersons()
        
        contactListVC.persons = persons
        secondContactListVC.persons = persons
    }
}
