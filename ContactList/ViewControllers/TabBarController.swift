//
//  TabBarController.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/28/23.
//

import UIKit

final class TabBarController: UITabBarController {

    // MARK: - Private Properties
    private let persons = Person.getPersons()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferData()
    }
    
    // MARK: - Private Methods
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let contactListVC = $0 as? ContactListViewController {
                contactListVC.persons = persons
            } else if let secondContactListVC = $0 as? SecondContactListViewController {
                secondContactListVC.persons = persons
            }
        }
    }
}
