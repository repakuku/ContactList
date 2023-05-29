//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Алексей Турулин on 5/27/23.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Properties
    var person: Person!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
